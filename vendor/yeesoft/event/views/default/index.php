<?php

use yeesoft\grid\GridPageSize;
use yeesoft\grid\GridQuickLinks;
use yeesoft\grid\GridView;
use yeesoft\helpers\Html;
use yeesoft\models\User;
use yeesoft\post\models\Post;
use yii\helpers\Url;
use yii\widgets\Pjax;

/* @var $this yii\web\View */
/* @var $searchModel yeesoft\post\models\search\PostSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('yee/training', 'Events');
$this->params['breadcrumbs'][] = 'Events';
?>
<div class="post-index">

    <div class="row">
        <div class="col-sm-12">
            <h3 class="lte-hide-title page-title"><?= Html::encode($this->title) ?></h3>
            <?= Html::a(Yii::t('yee', 'Add New'), ['/event/default/create'], ['class' => 'btn btn-sm btn-primary']) ?>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-body">

            <div class="row">
                <div class="col-sm-6">

                </div>

                <div class="col-sm-6 text-right">
                    <?= GridPageSize::widget(['pjaxId' => 'post-grid-pjax']) ?>
                </div>
            </div>

            <?php
            Pjax::begin([
                'id' => 'events-grid-pjax',
            ])
            ?>

            <?php
           echo GridView::widget([
                'id' => 'events-grid',
                'dataProvider' => $dataProvider,
                'filterModel' => $searchModel,
                'bulkActionOptions' => [
                    'gridId' => 'events-grid',
                    'actions' => [
                        Url::to(['changestatus?status=activate']) => Yii::t('yee', 'Activate'),
                        Url::to(['changestatus?status=deactivate']) => Yii::t('yee', 'Deactivate'),
                        Url::to(['bulk-delete']) => Yii::t('yii', 'Delete'),
                    ]
                ],
                'columns' => [
                    ['class' => 'yeesoft\grid\CheckboxColumn', 'options' => ['style' => 'width:10px']],
                    [
                        'class' => 'yeesoft\grid\columns\TitleActionColumn',
                        'controller' => '/event/default',
                        'title' => function (\yeesoft\event\models\Events $model) {
                            return Html::a($model->title, ['/event/default/view', 'id' => $model->id], ['data-pjax' => 0]);
                        },
                    ],
                    [
                        'label' => 'Current Status',
                        'attribute' => 'status',
                        'value' => function ($model) {
                            if($model->status == 1){
                                return "Activate";
                            }if($model->status == 0){
                                return "Deactivate";
                            }

                        },
                    ],
                ],
            ]);
            ?>

<?php Pjax::end() ?>
        </div>
    </div>
</div>


