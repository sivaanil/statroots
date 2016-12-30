<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "college".
 *
 * @property integer $id
 * @property string $college_name
 */
class College extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'college';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['college_name'], 'required'],
            [['college_name'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'college_name' => 'College Name',
        ];
    }
}
