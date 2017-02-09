<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Nominations;

/**
 * NominationsSearch represents the model behind the search form about `app\models\Nominations`.
 */
class NominationsSearch extends Nominations
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'nomination_program_id', 'nomination_type_id', 'location_id', 'reference_id', 'age', 'advertisement_id', 'student_details_id', 'employee_details_id', 'bank_details_id', 'registration_id'], 'integer'],
            [['name', 'computer_knowledge', 'referred_by', 'gender', 'person_type', 'nationality', 'address', 'mobile', 'email', 'can_carry_laptop', 'having_exposure', 'key_expectations', 'created_at'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Nominations::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'nomination_program_id' => $this->nomination_program_id,
            'nomination_type_id' => $this->nomination_type_id,
            'location_id' => $this->location_id,
            'reference_id' => $this->reference_id,
            'age' => $this->age,
            'advertisement_id' => $this->advertisement_id,
            'student_details_id' => $this->student_details_id,
            'employee_details_id' => $this->employee_details_id,
            'bank_details_id' => $this->bank_details_id,
            'registration_id' => $this->registration_id,
            'created_at' => $this->created_at,
        ]);

        $query->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'computer_knowledge', $this->computer_knowledge])
            ->andFilterWhere(['like', 'referred_by', $this->referred_by])
            ->andFilterWhere(['like', 'gender', $this->gender])
            ->andFilterWhere(['like', 'person_type', $this->person_type])
            ->andFilterWhere(['like', 'nationality', $this->nationality])
            ->andFilterWhere(['like', 'address', $this->address])
            ->andFilterWhere(['like', 'mobile', $this->mobile])
            ->andFilterWhere(['like', 'email', $this->email])
            ->andFilterWhere(['like', 'can_carry_laptop', $this->can_carry_laptop])
            ->andFilterWhere(['like', 'having_exposure', $this->having_exposure])
            ->andFilterWhere(['like', 'key_expectations', $this->key_expectations]);

        return $dataProvider;
    }
}
