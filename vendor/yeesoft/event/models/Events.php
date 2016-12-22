<?php

namespace yeesoft\event\models;

use Yii;
use yeesoft\models\OwnerAccess;

/**
 * This is the model class for table "events".
 *
 * @property integer $id
 * @property string $title
 * @property string $content
 * @property string $nominate
 * @property string $event_date
 * @property string $created_date
 * @property string $is_upcoming
 */
class Events extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'events';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title', 'content', 'event_date', 'created_date'], 'required'],
            [['content', 'nominate', 'is_upcoming'], 'string'],
            [['event_date', 'created_date'], 'safe'],
            [['title'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'content' => 'Content',
            'nominate' => 'Nominate',
            'event_date' => 'Event Date',
            'created_date' => 'Created Date',
            'is_upcoming' => 'Is Upcoming',
        ];
    }

    public function isMultilingual()
    {
        return ($this->getBehavior('multilingual') !== NULL);
    }

    public static function changeStatus($ids,$status){
        $ids = implode(",",$ids);
        if($status == 'activate'){
            \Yii::$app->db->createCommand("UPDATE events SET status='1' WHERE id IN ($ids)")
                ->execute();

        }if ($status == 'deactivate'){
            \Yii::$app->db->createCommand("UPDATE events SET status='0' WHERE id IN ($ids)")
                ->execute();

        }
    }
}
