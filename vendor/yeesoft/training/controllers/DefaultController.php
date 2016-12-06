<?php

namespace yeesoft\training\controllers;

use yeesoft\controllers\admin\BaseController;
use yeesoft\models\User;

/**
 * PostController implements the CRUD actions for Post model.
 */
class DefaultController extends BaseController
{

    public $modelClass;
    public $modelSearchClass;

    public function init()
    {
        parent::init();
    }

    public function actionIndex()
    {
        return $this->render("index");
    }


}
