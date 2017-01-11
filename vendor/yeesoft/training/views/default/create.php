<?php

use yii\helpers\Html;

/* @var $this yii\web\View */


$this->title = Yii::t('yee', 'Create {item}', ['item' => Yii::t('yee/training', 'Training')]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('yee/training', 'Training'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="post-create">
    <h3 class="lte-hide-title"><?= Html::encode($this->title) ?></h3>
    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>
</div>
