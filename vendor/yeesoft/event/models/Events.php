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
    public $thumbnail;
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
            [['title','description', 'content', 'event_date', 'created_date'], 'required'],
            [['description', 'content', 'status'], 'string'],
            [['event_date', 'created_date'], 'safe'],
            [['title'], 'string', 'max' => 255],
            [['display_image'], 'string', 'max' => 255]
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
            'description' => 'Description',
            'content' => 'Content',
            'event_date' => 'Event Date',
            'display_image' => 'Display Image',
            'created_date' => 'Created Date'
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

    public static function deleteEvents($ids){
        $ids = implode(",",$ids);
        \Yii::$app->db->createCommand("DELETE from events WHERE id IN ($ids)")
            ->execute();
        return true;
    }
}
