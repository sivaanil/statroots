<?php

namespace backend\controllers;

use yeesoft\controllers\admin\DashboardController;

class SiteController extends DashboardController
{
    public function actionIndex(){
        echo "Hi";
        exit;
    }
}