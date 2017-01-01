<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "student_details".
 *
 * @property integer $id
 * @property integer $college_id
 * @property integer $course_id
 * @property string $year_of_passing
 * @property string $branch
 */
class StudentDetails extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'student_details';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
//            [['college_id', 'course_id', 'year_of_passing', 'branch'], 'required'],
            [['college_id', 'course_id'], 'integer'],
            [['year_of_passing'], 'string', 'max' => 10],
            [['branch'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'college_id' => 'College ID',
            'course_id' => 'Course ID',
            'year_of_passing' => 'Year Of Passing',
            'branch' => 'Branch',
        ];
    }
}
