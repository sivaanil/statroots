<?php

namespace yeesoft\training\controllers;

use yii;
use yeesoft\controllers\admin\BaseController;
use yeesoft\models\User;
use yeesoft\training\models\Training;
use yeesoft\training\models\TrainingSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * PostController implements the CRUD actions for Post model.
 */
class DefaultController extends BaseController
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
     * Lists all Training models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new TrainingSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Training model.
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
     * Creates a new Training model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Training();

        if(\Yii::$app->request->isPost && \Yii::$app->user->isSuperadmin){
            $model->attributes = $_POST['Training'];
            $model->training_date =\Yii::$app->formatter->asDatetime($model->training_date, 'yyyy-MM-dd 00:00:00');
            $model->created_at =\Yii::$app->formatter->asDatetime('now', 'yyyy-MM-dd H:i:s');
            if($model->save()){
                return $this->redirect(['view', 'id' => $model->id]);
            }
        }
            return $this->render('create', [
                'model' => $model,
            ]);

    }

    /**
     * Updates an existing Training model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        if(\Yii::$app->user->isSuperadmin) {
            $model = $this->findModel($id);

            if (\Yii::$app->request->post()) {
                $model->attributes = \Yii::$app->request->post('Training');
                $model->training_date = \Yii::$app->formatter->asDatetime($model->training_date, 'yyyy-MM-dd 00:00:00');
                $model->save();
                return $this->redirect(['view', 'id' => $model->id]);
            } else {
                return $this->render('update', [
                    'model' => $model,
                ]);
            }
        }
    }

    /**
     * Deletes an existing Training model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    public function actionChangestatus(){
        if(\Yii::$app->request->isPost && \Yii::$app->user->isSuperadmin){
            $ids = \Yii::$app->request->post('selection');
            $status = \Yii::$app->request->get('status');
            Training::changeStatus($ids,$status);
        }

    }

    public function actionBulkdelete(){
        if(\Yii::$app->request->isPost && \Yii::$app->user->isSuperadmin){
            $ids = \Yii::$app->request->post('selection');
            Training::deleteEvents($ids);
        }

    }

    /**
     * Finds the Training model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Training the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Training::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

}
