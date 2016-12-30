<?php

namespace frontend\controllers;

use yeesoft\event\models\Events;
use Yii;
use yii\data\Pagination;

/**
 * Site controller
 */
class EventController extends \yeesoft\controllers\BaseController
{
    public $freeAccess = true;

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }


    public function actionIndex(){}

    public function actionView($id){
        exit("sd");
    }


}