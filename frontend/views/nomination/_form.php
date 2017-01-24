<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use yii\jui\DatePicker;
/* @var $this yii\web\View */
/* @var $model app\models\Nominations */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="nominations-form">

    <?php $form = ActiveForm::begin(); ?>

    <?php
    $trainingPrograms = \yeesoft\training\models\Training::find()->where("`status` = '1'")->all();
    $trainingProgram =ArrayHelper::map($trainingPrograms,'id','title');
    echo $form->field($model, 'nomination_program_id')->dropDownList($trainingProgram,['prompt'=>'Select...']);
    ?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'mobile')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'nomination_type_id')->dropDownList(array('1'=>'Company Sponsored','2'=>'Individual'),['prompt'=>'Select...']); ?>

    <?php $locations = \app\models\Location::find()->all();
    $listLocations=ArrayHelper::map($locations,'id','name');
    echo $form->field($model, 'location_id')->dropDownList($listLocations,['prompt'=>'Select...']);
    ?>

    <?= $form->field($model, 'computer_knowledge')->dropDownList([ '1'=>'Yes', '0'=>'No' ], ['prompt' => 'Select...']) ?>

    <?= $form->field($model, 'reference_id')->textInput() ?>

    <?= $form->field($model, 'referred_by')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'gender')->dropDownList([ '1' => 'Male', '2' => 'Female', ], ['prompt' => 'Select...']) ?>

    <?= $form->field($model, 'age')->textInput() ?>

    <?= $form->field($model, 'nationality')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'address')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'can_carry_laptop')->dropDownList([ '1' => 'Yes', '0' => 'No' ], ['prompt' => 'Select...']) ?>

    <?= $form->field($model, 'having_exposure')->dropDownList([ '1' => 'Yes', '0' => 'No' ], ['prompt' => 'Select...']) ?>

    <?= $form->field($model, 'advertisement_id')->dropDownList([ '1' => 'Seminar', '2' => 'Online', '3' => 'Word of mouth', '4' => 'Advertisement', '5' => 'Others'], ['prompt' => 'Select...']) ?>

    <?= $form->field($model, 'key_expectations')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'person_type')->dropDownList([ '1' => 'Employee', '2' => 'Student', ], ['prompt' => 'Select...']) ?>

    <div id="studentDetails" style="display:none">
        <?php
        $colleges = \app\models\College::find()->all();
        $college=ArrayHelper::map($colleges,'id','college_name');
        echo $form->field($studentModel, 'college_id')->dropDownList($college,['prompt'=>'Select...']);
        ?>

        <?php
        $courses = \app\models\Course::find()->all();
        $course =ArrayHelper::map($courses,'id','course_name');
        echo $form->field($studentModel, 'course_id')->dropDownList($course,['prompt'=>'Select...']);
        ?>

        <?= $form->field($studentModel, 'branch')->textInput() ?>

        <?= $form->field($studentModel, 'year_of_passing')->dropDownList([ '2017' => '2017', '2018' => '2018','2019' => '2019', '2020' => '2020', ], ['prompt' => 'Select...']) ?>
    </div>
    <div id="empDetails" style="display:none">
        <?= $form->field($employeeModel, 'current_employer')->textInput() ?>

        <?= $form->field($employeeModel, 'industry_sector')->textInput() ?>

        <?= $form->field($employeeModel, 'functional_area')->textInput() ?>

        <?= $form->field($employeeModel, 'designation')->textInput() ?>

        <?= $form->field($employeeModel, 'experience')->textInput() ?>

        <?= $form->field($employeeModel, 'academic_qualifications')->textInput() ?>

        <?= $form->field($employeeModel, 'email_id')->textInput()->label('Email (Official)') ?>
    </div>

    <?= $form->field($model, 'mode_of_payment')->dropDownList([ 'cash' => 'Cash', 'DD' => 'DD','online' => 'Online', ], ['prompt' => 'Select...']) ?>

    <div id="bankDetails" style="display:none">
        <h4>Bank Details to be used for Electronic Fund Transfer (NEFT):</h4>
        <table class="table table-striped">
            <tr>
                <th>Amout (in INR)</th>
                <td>250.00</td>
            </tr>
            <tr>
                <th>Beneficiary Name</th>
                <td>X</td>
            </tr>
            <tr>
                <th>Beneficiary Account Type</th>
                <td>Savings</td>
            </tr>
            <tr>
                <th>Beneficiary A/c No</th>
                <td>545554545</td>
            </tr>
            <tr>
                <th>Beneficiary Bank</th>
                <td>HDFC Bank</td>
            </tr>
            <tr>
                <th>Branch</th>
                <td>Hitech City</td>
            </tr>
            <tr>
                <th>City</th>
                <td>Hyderabad</td>
            </tr>
        </table>

        <h4>Details to be used for Demand Draft (DD):</h4>
        <table class="table table-striped">
            <tr>
                <th>DD in favor of</th>
                <td>X</td>
            </tr>
            <tr>
                <th>Payable in</th>
                <td>sdsdd</td>
            </tr>
            <tr>
                <th>Beneficiary Name</th>
                <td>X</td>
            </tr>
            <tr>
                <th>Beneficiary A/c No</th>
                <td>545554545</td>
            </tr>
            <tr>
                <th>Beneficiary Bank</th>
                <td>HDFC Bank</td>
            </tr>
            <tr>
                <th>Branch</th>
                <td>Hitech City</td>
            </tr>
            <tr>
                <th>City</th>
                <td>Hyderabad</td>
            </tr>
        </table>

        <h4>Payment Instructions</h4>
        <p>1. Total fee amount to be paid at the time of Registration.<br/>
           2. Course Fee Payment can be made through cash / DD / Online Net transfer.<br/>
           3. In case of Demand Draft, courier the DD to our mailing address.<br/>
           4. The scanned copy of DD to be mailed to connect@statroots.com .<br/>
        </p>

        <p>Please Note: Acknowledgement mail shall be sent to you after the Registration process is completed and nomination shall be confirmed after the payment is received
            Detailed information about the program, venue, contact person and other instructions shall be communicated in a separate mail
            For any assistance, you can contact connect@statroots.com or call on +91-7337027700
        </p>

        <h4>Terms & Conditions:</h4>
        <p>
            Fees once paid will not be refunded under any circumstances. Change of training batch is allowed provided the company is notified in writing at least one week prior to the first agreed training date and availability of seat. In the unlikely event that the institute is unable to deliver the training, approving company authority will be offered a refund of the unused portion of the training fees that he/she has paid to the Company. Alternatively, he/she may be offered enrolment in an alternative batch by the Company at no extra cost. The approving company authority has the right to choose whether he/she would prefer a refund of the unused portion of the training fees, or to accept a place in another training batch.
        </p>
    </div>

    <div class="form-group">
        <?php
        if($this->context->action->id == 'update'){
            echo $form->field($model, 'reciept_number')->textInput();

            echo $form->field($model, 'reciept_date')->widget(DatePicker::className(),['clientOptions' => ['dateFormat' => 'Y/m/d']]);
        }
        ?>
        <?= $form->field($model, 'termsAndConditions')->checkbox(['label'=> 'I agree to Terms & Conditions']) ?>

        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

<?php
$js = <<<JS
$("#nominations-person_type").on("change",function() {
  var personType = $("#nominations-person_type").val();
  console.log(personType);
  if(personType == 1){
      $("#empDetails").show();
      $("#studentDetails").hide();
  }if(personType == 2){
      $("#studentDetails").show();
      $("#empDetails").hide();
  }if(personType == ''){
      $("#studentDetails").hide();
      $("#empDetails").hide();
  }
})

$("#nominations-mode_of_payment").on("change",function() {
 var paymentType = $('#nominations-mode_of_payment').val();
 if(paymentType != 'cash'){
     $("#bankDetails").show();
 }else{
     $("#bankDetails").hide();
 }

})
JS;
$this->registerJs($js, yii\web\View::POS_READY);
?>