<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel app\models\NominationsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Nominations';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="nominations-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Nominations', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
<?php Pjax::begin(); ?>    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

//            'id',
            'name',
            [
                'label' => 'Nominated Program',
                'attribute' => 'nomination_program_id',
                'value' => function ($model) {
                $nominatedProgram = \yeesoft\training\models\Training::findOne($model->nomination_program_id);
                    return $nominatedProgram['title'];
//                    if($model->status == 1){
//                        return "Activate";
//                    }if($model->status == 0){
//                        return "Deactivate";
//                    }

                },
            ],

//            'nomination_type_id',
//            'location_id',
            // 'computer_knowledge',
            // 'reference_id',
            // 'referred_by',
            // 'gender',
            // 'person_type',
            // 'age',
            // 'nationality',
            // 'address:ntext',
             'mobile',
             'email:email',
            // 'can_carry_laptop',
            // 'having_exposure',
            // 'advertisement',
            // 'key_expectations:ntext',
            // 'student_details_id',
            // 'employee_details_id',
            // 'bank_details_id',
            // 'registration_id',
            // 'created_at',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
<?php Pjax::end(); ?></div>
