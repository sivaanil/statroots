<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use app\models\Location;
use \app\models\College;
use \app\models\Course;

use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model app\models\Registration */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="row">
    <div class="col-md-9">


            <div class="panel-body">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'mobile')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'address')->textarea(['rows' => 6]) ?>

    <?php $locations = Location::find()->all();
    $listLocations=ArrayHelper::map($locations,'id','name');
    echo $form->field($model, 'location_id')->dropDownList($listLocations,['prompt'=>'Select...']);
    ?>

    <?php
    $colleges = College::find()->all();
    $college=ArrayHelper::map($colleges,'id','college_name');
    echo $form->field($model, 'college_id')->dropDownList($college,['prompt'=>'Select...']);
    ?>

    <?php
    $courses = Course::find()->all();
    $course =ArrayHelper::map($courses,'id','course_name');
    echo $form->field($model, 'course_id')->dropDownList($course,['prompt'=>'Select...']);
    ?>

    <?= $form->field($model, 'year_of_study')->dropDownList([ 1 => '1st Year', 2 => '2nd Year', 3 => '3rd Year', 4 => '4th Year', ], ['prompt' => 'Select']) ?>

    <?= $form->field($model, 'branch')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'preferred_location_id')->dropDownList($listLocations,['prompt'=>'Select...']) ?>

    <?= $form->field($model, 'laptop_status')->dropDownList([ 1 => 'Yes – Have own laptop', 2 => 'No – Do not own laptop', 3 => 'Can bring laptop for training', 4 => 'Can’t bring laptop for training', ], ['prompt' => 'Select']) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>


            </div></div></div>
