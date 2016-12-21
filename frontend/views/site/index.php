<?php

use yii\widgets\LinkPager;
use yii\bootstrap\Carousel;
use yeesoft\block\models\Block;
use yii\helpers\Html;

/* @var $this yii\web\View */

$this->title = 'Homepage';
?>
<div class="site-index">
    <div class="body-content">

        <?php /* @var $post yeesoft\post\models\Post */
        echo Carousel::widget([
            'items' => [
                // the item contains only the image
                // the item contains both the image and the caption
                [
                    'content' => '<img src="uploads/2016/12/statrootsresized.jpg"/>',
                    'caption' => '',
                    'options' => [],
                ],
                ]
            ]);

        ?>
        <br/><br/>
        <?php 
echo Html::a('Nominate', ['/site/nominate'], ['class'=>'btn btn-default']);
        foreach ($posts as $post) : ?>
            <?= $this->render('/items/post.php', ['post' => $post, 'page' => 'index']) ?>
        <?php endforeach; ?>

        <div class="text-center">
            <?= LinkPager::widget(['pagination' => $pagination]) ?>
        </div>

    </div>
</div>
