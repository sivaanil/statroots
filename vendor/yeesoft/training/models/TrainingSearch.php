<?php

namespace yeesoft\training\models;

use yeesoft\training\models\Training;
use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;

/**
 * EventsSearch represents the model behind the search form about `app\models\Events`.
 */
class TrainingSearch extends Training
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id'], 'integer'],
            [['title', 'content', 'nominate', 'is_upcoming', 'training_date', 'created_at', 'status'], 'safe'],
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
        $query = Training::find();

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
            'training_date' => $this->training_date,
            'created_at' => $this->created_at,
        ]);

        $query->andFilterWhere(['like', 'title', $this->title])
            ->andFilterWhere(['like', 'content', $this->content])
            ->andFilterWhere(['like', 'nominate', $this->nominate])
            ->andFilterWhere(['like', 'is_upcoming', $this->is_upcoming])
            ->andFilterWhere(['like', 'status', $this->status]);

        return $dataProvider;
    }
}
