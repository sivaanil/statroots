<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "nominations".
 *
 * @property integer $id
 * @property string $name
 * @property integer $nomination_program_id
 * @property integer $nomination_type_id
 * @property integer $location_id
 * @property string $computer_knowledge
 * @property integer $reference_id
 * @property string $referred_by
 * @property string $gender
 * @property string $person_type
 * @property integer $age
 * @property string $nationality
 * @property string $address
 * @property string $mobile
 * @property string $email
 * @property string $can_carry_laptop
 * @property string $having_exposure
 * @property integer $advertisement_id
 * @property string $key_expectations
 * @property integer $student_details_id
 * @property integer $employee_details_id
 * @property integer $bank_details_id
 * @property integer $registration_id
 * @property string $mode_of_payment
 * @property string $reciept_number
 * @property string $reciept_date
 * @property string $created_at
 */
class Nominations extends \yii\db\ActiveRecord
{
    public $termsAndConditions;
    //~ public $mode_of_payment;
    //~ public $reciept_number;
    //~ public $reciept_date;
    
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'nominations';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
         return [
            [['name', 'nomination_program_id', 'nomination_type_id', 'location_id', 'computer_knowledge', 'gender', 'person_type', 'age', 'nationality', 'address', 'mobile', 'email', 'can_carry_laptop', 'having_exposure', 'advertisement_id', 'registration_id', 'mode_of_payment'], 'required'],
            [['nomination_program_id', 'nomination_type_id', 'location_id', 'reference_id', 'age', 'advertisement_id', 'student_details_id', 'employee_details_id', 'bank_details_id', 'registration_id'], 'integer'],
            [['computer_knowledge', 'gender', 'person_type', 'address', 'can_carry_laptop', 'having_exposure', 'key_expectations'], 'string'],
            [['reciept_date', 'created_at'], 'safe'],
            [['name', 'referred_by', 'reciept_number'], 'string', 'max' => 255],
            [['nationality', 'email', 'mode_of_payment'], 'string', 'max' => 60],
            [['mobile'], 'string', 'max' => 25],
            [['email'], 'email'],
            ['termsAndConditions', 'required', 'requiredValue' => 1, 'message' => 'Please agree to terms and conditions']
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
            'nomination_program_id' => 'Nomination Program ID',
            'nomination_type_id' => 'Nomination Type ID',
            'location_id' => 'Location ID',
            'computer_knowledge' => 'Computer Knowledge',
            'reference_id' => 'Reference ID',
            'referred_by' => 'Referred By',
            'gender' => 'Gender',
            'person_type' => 'Person Type',
            'age' => 'Age',
            'nationality' => 'Nationality',
            'address' => 'Address',
            'mobile' => 'Mobile',
            'email' => 'Email',
            'can_carry_laptop' => 'Can Carry Laptop',
            'having_exposure' => 'Having Exposure',
            'advertisement_id' => 'Advertisement',
            'key_expectations' => 'Key Expectations',
            'student_details_id' => 'Student Details ID',
            'employee_details_id' => 'Employee Details ID',
            'bank_details_id' => 'Bank Details ID',
            'registration_id' => 'Registration ID',
            'mode_of_payment' => 'Mode Of Payment',
            'reciept_number' => 'Reciept Number',
            'reciept_date' => 'Reciept Date',
            'created_at' => 'Created At',
        ];
    }
}
