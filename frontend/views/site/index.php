<?php

use yii\widgets\LinkPager;
use yii\bootstrap\Carousel;
use yeesoft\block\models\Block;

/* @var $this yii\web\View */

$this->title = 'Homepage';
?>
<div class="site-index">

<!--    --><?php //if (Yii::$app->getRequest()->getQueryParam('page') <= 1) : ?>
<!--        <div class="jumbotron">-->
<!--            <h1>Congratulations!</h1>-->
<!---->
<!--            <p class="lead">You have successfully created your Yii-powered application.</p>-->
<!---->
<!--            <p><a class="btn btn-lg btn-success" href="http://www.yiiframework.com">Get started with Yii</a></p>-->
<!--        </div>-->
<!--    --><?php //endif; ?>

    <div class="body-content">

        <?php /* @var $post yeesoft\post\models\Post */
        echo Carousel::widget([
            'items' => [
                // the item contains only the image
                // the item contains both the image and the caption
                [
                    'content' => '<img src="https://cdn.pixabay.com/photo/2016/09/07/22/38/cat-1652822_960_720.jpg"/>',
                    'caption' => '<h4>This is title</h4><p>This is the caption text</p>',
                    'options' => [],
                ],
                [
                    'content' => '<img src="http://www.gettyimages.in/gi-resources/images/Homepage/Hero/US/SEP2016/prestige-476863311.jpg"/>',
                    'caption' => '<h4>This is title</h4><p>This is the caption text</p>',
                    'options' => [],
                ],
                ]
            ]);

        ?>
        <?php echo Block::getHtml('services', ['link' => 'http://www.example.com/', 'title' => 'Example Site']); ?>
        <?php foreach ($posts as $post) : ?>
            <?= $this->render('/items/post.php', ['post' => $post, 'page' => 'index']) ?>
        <?php endforeach; ?>

        <div class="text-center">
            <?= LinkPager::widget(['pagination' => $pagination]) ?>
        </div>

    </div>
</div>
