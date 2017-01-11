<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\NominationsSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="nominations-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'name') ?>

    <?= $form->field($model, 'nomination_program_id') ?>

    <?= $form->field($model, 'nomination_type_id') ?>

    <?= $form->field($model, 'location_id') ?>

    <?php // echo $form->field($model, 'computer_knowledge') ?>

    <?php // echo $form->field($model, 'reference_id') ?>

    <?php // echo $form->field($model, 'referred_by') ?>

    <?php // echo $form->field($model, 'gender') ?>

    <?php // echo $form->field($model, 'person_type') ?>

    <?php // echo $form->field($model, 'age') ?>

    <?php // echo $form->field($model, 'nationality') ?>

    <?php // echo $form->field($model, 'address') ?>

    <?php // echo $form->field($model, 'mobile') ?>

    <?php // echo $form->field($model, 'email') ?>

    <?php // echo $form->field($model, 'can_carry_laptop') ?>

    <?php // echo $form->field($model, 'having_exposure') ?>

    <?php // echo $form->field($model, 'advertisement') ?>

    <?php // echo $form->field($model, 'key_expectations') ?>

    <?php // echo $form->field($model, 'student_details_id') ?>

    <?php // echo $form->field($model, 'employee_details_id') ?>

    <?php // echo $form->field($model, 'bank_details_id') ?>

    <?php // echo $form->field($model, 'registration_id') ?>

    <?php // echo $form->field($model, 'created_at') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
