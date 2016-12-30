<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "registration".
 *
 * @property integer $id
 * @property string $name
 * @property string $mobile
 * @property string $email
 * @property string $address
 * @property integer $location_id
 * @property integer $college_id
 * @property integer $course_id
 * @property string $year_of_study
 * @property string $branch
 * @property integer $preferred_location_id
 * @property string $laptop_status
 */
class Registration extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'registration';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'mobile', 'email', 'address', 'location_id', 'college_id', 'course_id', 'year_of_study', 'branch', 'preferred_location_id', 'laptop_status'], 'required'],
            [['address', 'year_of_study', 'laptop_status'], 'string'],
            [['location_id', 'college_id', 'course_id', 'preferred_location_id'], 'integer'],
            [['name', 'email', 'branch'], 'string', 'max' => 255],
            [['mobile'], 'string', 'max' => 20],
            [['email'], 'email']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'mobile' => 'Mobile',
            'email' => 'Email',
            'address' => 'Address',
            'location_id' => 'Location',
            'college_id' => 'College',
            'course_id' => 'Course',
            'year_of_study' => 'Year Of Study',
            'branch' => 'Branch',
            'preferred_location_id' => 'Preferred Location',
            'laptop_status' => 'Laptop Status',
        ];
    }
}
