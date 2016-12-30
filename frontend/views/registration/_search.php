<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\RegistrationSsearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="registration-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'name') ?>

    <?= $form->field($model, 'mobile') ?>

    <?= $form->field($model, 'email') ?>

    <?= $form->field($model, 'address') ?>

    <?php // echo $form->field($model, 'location_id') ?>

    <?php // echo $form->field($model, 'college_id') ?>

    <?php // echo $form->field($model, 'course_id') ?>

    <?php // echo $form->field($model, 'year_of_study') ?>

    <?php // echo $form->field($model, 'branch') ?>

    <?php // echo $form->field($model, 'preferred_location_id') ?>

    <?php // echo $form->field($model, 'laptop_status') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
