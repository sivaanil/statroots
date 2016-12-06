<?php

namespace yeesoft\user\widgets\dashboard;

use yeesoft\models\User;
use yeesoft\user\models\search\UserSearch;
use yeesoft\widgets\DashboardWidget;
use Yii;

class Users extends DashboardWidget
{
    /**
     * Most recent post limit
     */
    public $recentLimit = 5;

    /**
     * Post index action
     */
    public $indexAction = 'user/default/index';

    /**
     * Total count options
     *
     * @var array
     */
    public $options;

    public function run()
    {
        if (!$this->options) {
            $this->options = $this->getDefaultOptions();
        }

        if (User::hasPermission('viewUsers')) {

            $searchModel = new UserSearch();
            $formName = $searchModel->formName();

            $recent = User::find()->orderBy(['id' => SORT_DESC])->limit($this->recentLimit)->all();

            foreach ($this->options as &$option) {
                $count = User::find()->filterWhere($option['filterWhere'])->count();
                $option['count'] = $count;
                $option['url'] = [$this->indexAction, $formName => $option['filterWhere']];
            }

            return $this->render('users', [
                'height' => $this->height,
                'width' => $this->width,
                'position' => $this->position,
                'users' => $this->options,
                'recent' => $recent,
            ]);

        }
    }

    public function getDefaultOptions()
    {
        return [
            ['label' => Yii::t('yee', 'Active'), 'icon' => 'ok', 'filterWhere' => ['status' => User::STATUS_ACTIVE]],
            ['label' => Yii::t('yee', 'Inactive'), 'icon' => 'ok', 'filterWhere' => ['status' => User::STATUS_INACTIVE]],
            ['label' => Yii::t('yee', 'Banned'), 'icon' => 'ok', 'filterWhere' => ['status' => User::STATUS_BANNED]],
        ];
    }
}