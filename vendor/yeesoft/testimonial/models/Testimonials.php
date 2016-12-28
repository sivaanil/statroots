<?php

namespace yeesoft\testimonial\models;

use Yii;

/**
 * This is the model class for table "testimonials".
 *
 * @property integer $id
 * @property string $comment
 * @property integer $user_id
 * @property string $status
 * @property string $created_date
 */
class Testimonials extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'testimonials';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['comment', 'user_id'], 'required'],
            [['user_id'], 'integer'],
            [['status'], 'string'],
            [['created_date'], 'safe'],
            [['comment'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'comment' => Yii::t('app', 'Comment'),
            'user_id' => Yii::t('app', 'User ID'),
            'status' => Yii::t('app', 'Status'),
            'created_date' => Yii::t('app', 'Created Date'),
        ];
    }
}