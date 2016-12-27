<?php

namespace yeesoft\event\controllers;

use yeesoft\controllers\admin\BaseController;
use yeesoft\event\models\Events;
use yeesoft\event\models\EventsSearch;
use yeesoft\models\User;

/**
 * PostController implements the CRUD actions for Post model.
 */
class DefaultController extends BaseController
{

    public $modelClass;
    public $modelSearchClass;
    //public $disabledActions = ['view', 'bulk-activate', 'bulk-deactivate'];

    public function init()
    {
        parent::init();
    }

    /**
     * Lists all Events models.
     * @return mixed
     */

    public function actionIndex()
    {
        if(\Yii::$app->user->isSuperadmin){
            $searchModel = new EventsSearch();
            $dataProvider = $searchModel->search(\Yii::$app->request->queryParams);
            return $this->render('index', [
                'searchModel' => $searchModel,
                'dataProvider' => $dataProvider,
            ]);
        }

    }

    /**
     * Creates a new Events model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */

    public function actionCreate(){
        $model = new Events();
        if(\Yii::$app->request->isPost && \Yii::$app->user->isSuperadmin){

            $model->attributes = $_POST['Events'];
            $model->event_date =\Yii::$app->formatter->asDatetime($model->event_date, 'yyyy-MM-dd 00:00:00');
            $model->created_date =\Yii::$app->formatter->asDatetime('now', 'yyyy-MM-dd H:i:s');

            if($model->save()){
                return $this->redirect(['view', 'id' => $model->id]);
            }
        }
        return $this->render("create",array('model' => $model));
    }

    /**
     * Displays a single Events model.
     * @param integer $id
     * @return mixed
     */

    public function actionView($id)
    {
        if(\Yii::$app->user->isSuperadmin){
            return $this->render('view', [
                'model' => $this->findModel($id),
            ]);
        }
    }

    /**
     * Updates an existing Events model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */

    public function actionUpdate($id)
    {
        if(\Yii::$app->user->isSuperadmin) {
            $model = $this->findModel($id);

            if (\Yii::$app->request->post()) {
                $model->attributes = \Yii::$app->request->post('Events');
                $model->event_date = \Yii::$app->formatter->asDatetime($model->event_date, 'yyyy-MM-dd 00:00:00');
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
     * Deletes an existing Events model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */

    public function actionDelete($id)
    {
        if(\Yii::$app->user->isSuperadmin) {
            $this->findModel($id)->delete();
            return $this->redirect(['index']);
        }
    }

    public function actionChangestatus(){
        if(\Yii::$app->request->isPost && \Yii::$app->user->isSuperadmin){
            $ids = \Yii::$app->request->post('selection');
            $status = \Yii::$app->request->get('status');
            Events::changeStatus($ids,$status);
        }

    }

    public function actionBulkdelete(){
        if(\Yii::$app->request->isPost && \Yii::$app->user->isSuperadmin){
            $ids = \Yii::$app->request->post('selection');
            Events::deleteEvents($ids);
        }

    }

    /**
     * Finds the Events model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Events the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Events::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

}
