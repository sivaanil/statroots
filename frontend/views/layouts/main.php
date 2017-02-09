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


//Yii::$app->assetManager->forceCopy = true;
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
                    <?php
                    if (Yii::$app->user->isGuest) { ?>
                        <?= Html::a('Signup', ['/auth/default/signup'], ['class' => 'btn loginbtn']) ?>
                        <?= Html::a('Login', ['/auth/default/login'], ['class' => 'btn loginbtn']) ?>
                    <?php }else{ ?>
                        <?= Html::a('Profile', ['/auth/default/profile'], ['class' => 'btn loginbtn']) ?>
                        <?= Html::a('Logout', ['/auth/default/logout'], ['class' => 'btn loginbtn']) ?>
                    <?php } ?>
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
                <a class="navbar-brand" href="#"><img class="img-responsive" src="/frontend/web/images/logo.jpg"></a>
            </div>
            <div class="collapse navbar-collapse pull-right" id="main-nav-toggle">
                <ul class="nav navbar-nav list-unstyle">
                    <li class="active"><a href="#">Home</a></li>
                    <li ><a href="#">Training</a>
                        <ul class="list-unstyle submenu">
                            <li><a href="#">Data Analytics Training</a></li>
                            <li><a href="#">Corporate Training</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Placements</a></li>
                    <li><a href="#">Consultancy</a></li>
                    <li class=""><a href="#">Resources</a></li>
                    <li><button class="btn btn-primary">Login / Sign up</button></li>
                </ul>
            </div>
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
                    <a href=""><img class="img-responsive" src="/frontend/web/images/footer.png"></a>
                    <ul class="list-unstyle scstyle">
                        <li>Follow us on:</li>
                        <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a</li>
                        <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a</li>
                        <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <h4 class="uline">Quick Links</h4>
                    <ul class="list-unstyle quicklinkleft">
                        <li><a href="#">Training</a></li>
                        <li><a href="#">Placements</a></li>
                        <li><a href="#">Consultancy</a></li>

                    </ul>
                    <ul class="list-unstyle quicklinkright">
                        <li><a href="#">About Statroots</a></li>
                        <li><a href="#">Resources</a></li>
                        <li><a href="#">FAQ</a></li>
                    </ul>
                </div>
                <div class="col-md-3 col-xs-12 pull-right">
                    <h4 class="uline">Contact</h4>
                    <div class="list-unstyle addr">
                        <p class="map-maker">Statroots</br>XXX Campus Drive</br>Hyderabad, 500081</p>
                        <p class="phone">+91-7337027700</p>
                        <p class="email">connect@statroots.com</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="main-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-xs-12">
                    <p class="m0">Copyright <i class="fa fa-copyright" aria-hidden="true"></i> 2017 Statroots</p>
                </div>
                <div class="col-md-6 col-xs-12">
                    <ul class="list-unstyle terms pull-right">
                        <li><a href="#">Terms & Conditions</a></li>
                        <li><a href="#">Privacy</a></li>

                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>