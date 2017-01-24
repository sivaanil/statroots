<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Registration */

$this->title = 'Register';
$this->params['breadcrumbs'][] = ['label' => 'Registrations', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="inner-content center_div">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>


</div>
