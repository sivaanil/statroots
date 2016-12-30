<?php

namespace yeesoft\training\models;

use Yii;

/**
 * This is the model class for table "training".
 *
 * @property integer $id
 * @property string $title
 * @property string $content
 * @property string $nominate
 * @property string $is_upcoming
 * @property string $created_at
 * @property string $training_date
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
            [['title','content', 'nominate', 'is_upcoming','training_date'], 'required'],
            [['content', 'nominate', 'is_upcoming', 'status'], 'string'],
            [['training_date','created_at'], 'safe'],
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

    public function isMultilingual()
    {
        return ($this->getBehavior('multilingual') !== NULL);
    }

    public static function changeStatus($ids,$status){
        $ids = implode(",",$ids);
        if($status == 'activate'){
            \Yii::$app->db->createCommand("UPDATE training SET status='1' WHERE id IN ($ids)")
                ->execute();

        }if ($status == 'deactivate'){
            \Yii::$app->db->createCommand("UPDATE training SET status='0' WHERE id IN ($ids)")
                ->execute();

        }
    }

    public static function deleteEvents($ids){
        $ids = implode(",",$ids);
        \Yii::$app->db->createCommand("DELETE from training WHERE id IN ($ids)")
            ->execute();
        return true;
    }
}
