<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Nominations */

$this->title = 'Nomination Form';
$this->params['breadcrumbs'][] = ['label' => 'Nominations', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="inner-content center_div">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'studentModel' => $studentModel,
        'employeeModel' => $employeeModel,
    ]) ?>

</div>
