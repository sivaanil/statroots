<?php

use yeesoft\helpers\Html;
use yeesoft\media\widgets\TinyMce;
use yeesoft\models\User;
use yeesoft\post\models\Category;
use yeesoft\post\models\Post;
use yeesoft\widgets\ActiveForm;
use yeesoft\widgets\LanguagePills;
use yii\jui\DatePicker;
use yeesoft\post\widgets\MagicSuggest;
use yeesoft\post\models\Tag;

/* @var $this yii\web\View */
/* @var $model yeesoft\post\models\Post */
/* @var $form yeesoft\widgets\ActiveForm */
?>

    <div class="event-form">

        <?php
        $form = ActiveForm::begin([
            'id' => 'event-form',
            'validateOnBlur' => false,
        ])
        ?>

        <div class="row">
            <div class="col-md-9">

                <div class="panel panel-default">
                    <div class="panel-body">

                        <?php if ($model->isMultilingual()): ?>
                            <?= LanguagePills::widget() ?>
                        <?php endif; ?>

                        <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>

                        <?= $form->field($model, 'description')->textarea(['rows' => 3]) ?>

                        <?= $form->field($model, 'content')->textarea(['rows' => 6]) ?>

                        <?= $form->field($model,'event_date')->widget(DatePicker::className(),['clientOptions' => ['dateFormat' => 'Y/m/d']]) ?>

                    </div>
                </div>
            </div>

            <div class="col-md-3">

                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="record-info">
                            <div class="record-info">
                                <?= $form->field($model, 'display_image')->widget(yeesoft\media\widgets\FileInput::className(), [
                                    'name' => 'image',
                                    'buttonTag' => 'button',
                                    'buttonName' => Yii::t('yee', 'Browse'),
                                    'buttonOptions' => ['class' => 'btn btn-default btn-file-input'],
                                    'options' => ['class' => 'form-control'],
                                    'template' => '<div class="post-thumbnail thumbnail"></div><div class="input-group">{input}<span class="input-group-btn">{button}</span></div>',
                                    'thumb' => 100,
                                    'imageContainer' => '.post-thumbnail',
                                    'pasteData' => yeesoft\media\widgets\FileInput::DATA_URL,
                                    'callbackBeforeInsert' => 'function(e, data) {
                                $(".post-thumbnail").show();
                            }',
                                ]) ?>
                            </div>
                            <div class="form-group">
                                <?php if ($model->isNewRecord): ?>
                                    <?= Html::submitButton(Yii::t('yee', 'Create'), ['class' => 'btn btn-primary']) ?>
                                    <?= Html::a(Yii::t('yee', 'Cancel'), ['/event/default/create'], ['class' => 'btn btn-default']) ?>
                                <?php else: ?>
                                    <?= Html::submitButton(Yii::t('yee', 'Save'), ['class' => 'btn btn-primary']) ?>
                                    <?= Html::a(Yii::t('yee', 'Delete'), ['/post/default/delete', 'id' => $model->id], [
                                        'class' => 'btn btn-default',
                                        'data' => [
                                            'confirm' => Yii::t('yii', 'Are you sure you want to delete this item?'),
                                            'method' => 'post',
                                        ],
                                    ]) ?>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <?php ActiveForm::end(); ?>

    </div>
<?php
$css = <<<CSS
.ms-ctn .ms-sel-ctn {
    margin-left: -6px;
    margin-top: -2px;
}
.ms-ctn .ms-sel-item {
    color: #666;
    font-size: 14px;
    cursor: default;
    border: 1px solid #ccc;
}
CSS;

$js = <<<JS
    var thumbnail = $("#events-display_image").val();
    
    if(!thumbnail){
            $('.post-thumbnail').hide();
    } else {
        $('.post-thumbnail').html('<img src="' + thumbnail + '" />');
        $('#events-display_image').val('');
    }
JS;

$this->registerCss($css);
$this->registerJs($js, yii\web\View::POS_READY);
?>