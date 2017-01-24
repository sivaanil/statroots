<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "training".
 *
 * @property integer $id
 * @property string $content
 * @property string $nominate
 * @property string $is_upcoming
 * @property string $created_at
 */
class Events extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'training';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['content', 'nominate', 'is_upcoming'], 'required'],
            [['content', 'nominate', 'is_upcoming'], 'string'],
            [['created_at'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'content' => Yii::t('app', 'Content'),
            'nominate' => Yii::t('app', 'Nominate'),
            'is_upcoming' => Yii::t('app', 'Is Upcoming'),
            'created_at' => Yii::t('app', 'Created At'),
        ];
    }
}
