<?php
/* @var $this \yii\web\View */
/* @var $content string */

use common\widgets\Alert;
use frontend\assets\AppAsset;
use frontend\assets\ThemeAsset;
use yeesoft\models\Menu;
use yeesoft\widgets\LanguageSelector;
use yeesoft\widgets\Nav as Navigation;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\helpers\Html;
use yii\widgets\Breadcrumbs;
use yeesoft\comment\widgets\RecentComments;
use yii\bootstrap\ActiveForm;
use yii\captcha\Captcha;


Yii::$app->assetManager->forceCopy = true;
AppAsset::register($this);
ThemeAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <?= $this->renderMetaTags() ?>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>

<div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="top-header">
        <div class="container">
            <ul class="list-unstyle pull-right">
                <li class="btn btninputs" data-toggle="modal" data-target="#myModallogin">
                    <a class="btn loginbtn" href="#"><i class="fa fa-sign-in" ></i>Login</a>
                </li>
                <li class="btn btninputs" data-toggle="modal" data-target="#myModalsignup">
                    <a href="#">Sign up</a>

                </li>
            </ul>
        </div>
    </div>
    <div class="main-nav">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-nav-toggle" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/"><img class="img-responsive" src="<?php echo Yii::$app->homeUrl?>frontend/web/images/logo.jpg"></a>
            </div>
            <div class="collapse navbar-collapse pull-right" id="main-nav-toggle">
                <ul class="nav navbar-nav list-unstyle">
                    <li class="active"><a href="#">Training</a>
                        <ul class="list-unstyle submenu">
                            <li><a href="/site/training">Training</a></li>
                            <li><a href="#">Data Analytics Training</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Placements</a></li>
                    <li><a href="#">Consultancy</a></li>
                    <li class=""><a href="#">Resources</a></li>
                    <li><a href="#">Blog & Community</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<?= Alert::widget() ?>
<?= $content ?>
<footer>
    <div class="sub-footer sectionpadding">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-xs-12">
                    <a href="#"><img class="img-responsive" src="<?php echo Yii::$app->homeUrl?>frontend/web/images/logo.jpg"></a>
                    <ul class="list-unstyle scstyle">
                        <li>Follow us on:</li>
                        <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a</li>
                        <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a</li>
                        <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <h4 class="uline">QUICK LINKS</h4>
                    <ul class="list-unstyle quicklinkleft">
                        <li><a href="#">Training</a></li>
                        <li><a href="#">Placements</a></li>
                        <li><a href="#">Consultancy</a></li>
                        <li><a href="#">Campus Map & Direction</a></li>
                    </ul>
                    <ul class="list-unstyle quicklinkright">
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">About Statroots</a></li>
                        <li><a href="#">Public Safety</a></li>
                        <li><a href="#">Site Map</a></li>
                    </ul>
                </div>
                <div class="col-md-3 col-xs-12 pull-right">
                    <h4 class="uline">CONTACT INFO</h4>
                    <div class="list-unstyle addr">
                        <p class="map-maker">Statroots</br>XXX Campus Drive</br>Hyderabad, 500081</p>
                        <p class="phone">+91-7337027700</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="main-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-xs-12">
                    <p class="m0">Copyright <i class="fa fa-copyright" aria-hidden="true"></i> 2016 Statroots</p>
                </div>
                <div class="col-md-6 col-xs-12">
                    <ul class="list-unstyle terms pull-right">
                        <li><a href="#">Terms & Condition</a></li>
                        <li><a href="#">Privacy</a></li>
                        <li><a href="#">Title</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
<div class="modal fade" id="myModallogin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">Login</h4>
            </div>
            <div class="modal-body">
                <?php
                $model = new yeesoft\auth\models\forms\LoginForm();
                $form = ActiveForm::begin([
                    'id' => 'login-form',
                    'options' => ['autocomplete' => 'off'],
                    'validateOnBlur' => false,
                    'fieldConfig' => [
                        'template' => "{input}\n{error}",
                    ],
                ])
                ?>
                <div id="errors" style="color: red;display: none"></div>
                <?= $form->field($model, 'username')->textInput(['placeholder' => $model->getAttributeLabel('username'), 'autocomplete' => 'off']) ?>

                <?= $form->field($model, 'password')->passwordInput(['placeholder' => $model->getAttributeLabel('password'), 'autocomplete' => 'off']) ?>

                <?= $form->field($model, 'rememberMe')->checkbox(['value' => true]) ?>

                <input type="submit" class = "btn btn-lg btn-primary btn-block" />

                <div class="row registration-block">
                    <div class="col-sm-12">
                        <?=
                        \yeesoft\auth\widgets\AuthChoice::widget([
                            'baseAuthUrl' => ['/auth/default/oauth', 'language' => false],
                            'popupMode' => false,
                        ])
                        ?>
                    </div>
                </div>

                <div class="row registration-block">
                    <div class="col-sm-6">
                        <?= Html::a(Yii::t('yee/auth', "Registration"), ['default/signup']) ?>
                    </div>
                    <div class="col-sm-6 text-right">
                        <?= Html::a(Yii::t('yee/auth', "Forgot password?"), ['default/reset-password']) ?>
                    </div>
                </div>

                <?php ActiveForm::end() ?>
            </div>

        </div>
    </div>
</div>
<div class="modal fade" id="myModalsignup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">Sign up / Register</h4>
            </div>
            <div class="modal-body">
                <?php
                $model = new \yeesoft\auth\models\forms\SignupForm();
                $form = ActiveForm::begin([
                    'id' => 'signup',
                    'validateOnBlur' => false,
                    'options' => ['autocomplete' => 'off'],
                ]); ?>

                <div id="signUpErrors" style="color: red;display: none"></div>

                <?= $form->field($model, 'username')->textInput(['maxlength' => 50]) ?>

                <?= $form->field($model, 'email')->textInput(['maxlength' => 255]) ?>

                <?= $form->field($model, 'password')->passwordInput(['maxlength' => 255]) ?>

                <?= $form->field($model, 'repeat_password')->passwordInput(['maxlength' => 255]) ?>

                <?= $form->field($model, 'captcha')->widget(Captcha::className(), [
                    'template' => '<div class="row"><div class="col-sm-3">{image}</div><div class="col-sm-3">{input}</div></div>',
                    'captchaAction' => [\yii\helpers\Url::to(['/auth/captcha'])]
                ]) ?>

                <input type="submit" class = "btn btn-lg btn-primary btn-block" />

                <div class="row registration-block">
                    <div class="col-sm-6">
                        <?= Html::a(Yii::t('yee/auth', "Login"), ['default/login']) ?>
                    </div>
                    <div class="col-sm-6 text-right">
                        <?= Html::a(Yii::t('yee/auth', "Forgot password?"), ['default/reset-password']) ?>
                    </div>
                </div>

                <?php ActiveForm::end() ?>
            </div>
        </div>
    </div>
</div>
<?php $this->endBody() ?>
<?php
$js = <<<JS
$("body").on('submit', '#login-form', function(e){
var form = $(this);
$.ajax({
url    : '/auth/login',
type   : 'POST',
data   : form.serialize(),
success: function (response)
{

$.each(response, function(obj)
                {
                    errors =response[obj][0];
                    console.log(response[obj]);
                });
                
                $("#errors").text(errors).show();
},
error  : function (e)
{

}
});
return false;
})
JS;

$js1 = <<<JS
$("body").on('submit', '#signup', function(e){
var form = $(this);
var errors1;
$.ajax({
url    : '/auth/signup',
type   : 'POST',
data   : form.serialize(),
success: function (response)
{
if(response == false){
  $("#signUpErrors").text(errors1).show();
}
$.each(response, function(obj)
                {
                    errors1 =response[obj][0];
                    console.log(response[obj]);
                });
                
                $("#signUpErrors").text(errors1).show();
},
error  : function (e)
{
    console.log("-");
console.log(e);
}
});
return false;
})
JS;
$this->registerJs($js, \yii\web\View::POS_READY);
$this->registerJs($js1, \yii\web\View::POS_READY);
?>
</body>
</html>
<?php $this->endPage() ?>