<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "employee_details".
 *
 * @property integer $id
 * @property string $current_employer
 * @property string $industry_sector
 * @property string $functional_area
 * @property string $designation
 * @property integer $experience
 * @property string $academic_qualifications
 * @property string $email_id
 */
class EmployeeDetails extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'employee_details';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
//            [['current_employer', 'industry_sector', 'functional_area', 'designation', 'experience', 'academic_qualifications', 'email_id'], 'required'],
            [['experience'], 'integer'],
            [['current_employer', 'industry_sector', 'functional_area', 'designation', 'academic_qualifications', 'email_id'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'current_employer' => 'Current Employer',
            'industry_sector' => 'Industry Sector',
            'functional_area' => 'Functional Area',
            'designation' => 'Designation',
            'experience' => 'Experience',
            'academic_qualifications' => 'Academic Qualifications',
            'email_id' => 'Email ID',
        ];
    }
}
