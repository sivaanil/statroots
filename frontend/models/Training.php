<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "training".
 *
 * @property integer $id
 * @property string $title
 * @property string $content
 * @property string $nominate
 * @property string $is_upcoming
 * @property string $training_date
 * @property string $created_at
 * @property string $status
 */
class Training extends \yii\db\ActiveRecord
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
            [['title', 'content', 'nominate', 'is_upcoming', 'training_date'], 'required'],
            [['content', 'nominate', 'is_upcoming', 'status'], 'string'],
            [['training_date', 'created_at'], 'safe'],
            [['title'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'title' => Yii::t('app', 'Title'),
            'content' => Yii::t('app', 'Content'),
            'nominate' => Yii::t('app', 'Nominate'),
            'is_upcoming' => Yii::t('app', 'Is Upcoming'),
            'training_date' => Yii::t('app', 'Training Date'),
            'created_at' => Yii::t('app', 'Created At'),
            'status' => Yii::t('app', 'Status'),
        ];
    }
}
