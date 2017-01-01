<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Nominations */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Nominations', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="inner-content center_div">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'name',
            'nomination_program_id',
            'nomination_type_id',
            'location_id',
            'computer_knowledge',
            'reference_id',
            'referred_by',
            'gender',
            'person_type',
            'age',
            'nationality',
            'address:ntext',
            'mobile',
            'email:email',
            'can_carry_laptop',
            'having_exposure',
            'advertisement_id',
            'key_expectations:ntext',
            'student_details_id',
            'employee_details_id',
            'bank_details_id',
            'registration_id',
            'reciept_number',
            'reciept_date',
            'created_at',
        ],
    ]) ?>

</div>
