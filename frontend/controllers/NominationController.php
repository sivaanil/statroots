<?php

namespace frontend\controllers;

use app\models\EmployeeDetails;
use app\models\StudentDetails;
use Yii;
use app\models\Nominations;
use app\models\NominationsSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * NominationController implements the CRUD actions for Nominations model.
 */
class NominationController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Nominations models.
     * @return mixed
     */
    public function actionAllnominations()
    {
        $searchModel = new NominationsSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Nominations model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Nominations model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Nominations();
        $studentModel = new StudentDetails();
        $employeeModel = new EmployeeDetails();
        if (Yii::$app->request->post()) {
            $studentDetails = Yii::$app->request->post("StudentDetails");
            $employeeDetails = Yii::$app->request->post("EmployeeDetails");
            $nominationDetails = Yii::$app->request->post("Nominations");
            $empDetailsInsertedId = $studentDetailsInsertedId = '';
            echo "<pre>";
//            print_r($_POST);
            
            if($nominationDetails['person_type'] == 1){
                $employeeModel->attributes = $employeeDetails;
                $employeeModel->save();
                $empDetailsInsertedId = $employeeModel->id;
            }else{
                $studentModel->attributes = $studentDetails;
                $studentModel->save();
                $studentDetailsInsertedId = $studentModel->id;
            }
            $model->attributes = $nominationDetails;
            $model->employee_details_id = $empDetailsInsertedId;
            $model->student_details_id = $studentDetailsInsertedId;
            $model->registration_id = time();
            $model->save();
            return $this->redirect('thanks');
        } else {
            return $this->render('create', [
                'model' => $model,
                'studentModel' => $studentModel,
                'employeeModel' => $employeeModel,
            ]);
        }
    }

    /**
     * Updates an existing Nominations model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $studentModel = new StudentDetails();
        $employeeModel = new EmployeeDetails();

        if (Yii::$app->request->post()) {
            $model->attributes = $_POST['Nominations'];
            $model->reciept_date =\Yii::$app->formatter->asDatetime($model->reciept_date, 'yyyy-MM-dd 00:00:00');
            $model->save();
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update', [
                'model' => $model,
                'studentModel' => $studentModel,
                'employeeModel' => $employeeModel,
            ]);
        }
    }

    /**
     * Deletes an existing Nominations model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Nominations model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Nominations the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Nominations::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
