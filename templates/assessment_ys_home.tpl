<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="">
  <link rel="icon" type="image/png" href="">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <!-- Linked json file should be question_feasibility.json -->
  <title>
    {{data['heading']}} | NIMHANS | QUESTIONNAIRE
  </title>
  <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="../assets/css/material-kit.css?v=2.0.7" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../assets/demo/demo.css" rel="stylesheet" />

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

  <script src="js/ys.js"></script>           

  <script type="text/javascript">    
    $(document).ready(function(){

      document.getElementById('q99.1_num_of_times').style.display = 'none'
      document.getElementById('q99.2_num_of_times').style.display = 'none'
      document.getElementById('q99.4_num_of_times').style.display = 'none'
      document.getElementById('q99.5_num_of_times').style.display = 'none'
      document.getElementById('q99.6_num_of_times').style.display = 'none'
      document.getElementById('q99.7_num_of_times').style.display = 'none'
      

      /*document.getElementById('q_17_q').style.display = 'none'
      document.getElementById('q_17_ig').style.display = 'none'

      document.getElementById('q_19_q').style.display = 'none'
      document.getElementById('q_19_ig').style.display = 'none'

      document.getElementById('q_21_q').style.display = 'none'
      document.getElementById('q_21_ig').style.display = 'none'

      document.getElementById('q_23_q').style.display = 'none'
      document.getElementById('q_23_ig').style.display = 'none'

      document.getElementById('q_25_q').style.display = 'none'
      document.getElementById('q_25_ig').style.display = 'none'

      document.getElementById('q_27_q').style.display = 'none'
      document.getElementById('q_27_ig').style.display = 'none'

      document.getElementById('q_29_q').style.display = 'none'
      document.getElementById('q_29_ig').style.display = 'none'

      document.getElementById('q_31_q').style.display = 'none'
      document.getElementById('q_31_ig').style.display = 'none'

      document.getElementById('q_33_q').style.display = 'none'
      document.getElementById('q_33_ig').style.display = 'none'

      document.getElementById('q_35_q').style.display = 'none'
      document.getElementById('q_35_ig').style.display = 'none'

      document.getElementById('q_37_q').style.display = 'none'
      document.getElementById('q_37_ig').style.display = 'none'

      document.getElementById('q_39_q').style.display = 'none'
      document.getElementById('q_39_ig').style.display = 'none'

      document.getElementById('q_41_q').style.display = 'none'
      document.getElementById('q_41_ig').style.display = 'none'

      document.getElementById('q_43_q').style.display = 'none'
      document.getElementById('q_43_ig').style.display = 'none'

      document.getElementById('q_45_q').style.display = 'none'
      document.getElementById('q_45_ig').style.display = 'none'
      
     
      */

    })  
  </script> 

</head>

<body class="login-page sidebar-collapse">         
  
  <!-- <div class="page-header header-filter" style="background-image: url(''); background-size: cover; background-position: top center;"> -->
    <div class="container">

      

      <div id="ques_data" style="display: block;">                
      
      % for x in data['sections']:
          % question_index=0
        <div class="row" style="margin-top: 75px;">
          <div class="col-md-6 ml-auto mr-auto">
            <div class="card card-login">
              <div class="card-header card-header-rose text-center">
                <h4 class="card-title" style="padding-left: 3%; padding-right: 3%;">{{!x['name']}}</h4>
                <p style="padding-left: 7%; padding-right: 7%; text-align: justify; text-justify: inter-word;">{{!x['summary']}}</p>
              </div>
              <div class="card-body" style="padding-top: 15px; padding-bottom: 15px;">
                % for y in data['data']:
                  % if y['section'] == x['name']:
                    <p id="q_{{y['qid']}}_q" style="font-weight: 400; padding-left: 15px; font-size: 1em; display: block;">
                        {{y['qid']}}. {{!y['ques']['english']}} 
                    </p>    
                  
                  <p id="q_{{y['qid']}}_k_q" style="font-weight: 400; padding-left: 15px; font-size: 1em; display: block;">
                      {{!y['ques']['kannada']}} 
                     
                    </p>  
                  
                    <div id="q_{{y['qid']}}_ig" class="input-group" style="padding-left: 15px; display: block;">
                      
                      % if y['qtype'] == 'text':
                        <p id="q_{{y['qid']}}_msg"></p>
                        <input type="text" class="form-control" id="q_{{y['qid']}}_data" name="q_{{y['qid']}}_data"  placeholder="{{y['ph']}}" style="width: 100%;">
                      % end

                      % if y['qtype'] == 'num':
                        <p id="q_{{y['qid']}}_msg"></p>
                        <input type="number" class="form-control" id="q_{{y['qid']}}_data" name="q_{{y['qid']}}_data"  placeholder="{{y['ph']}}" maxlength="10000000" onkeyup="checkValid('q_{{y['qid']}}_data', '{{y['range']}}')" value="0" style="width: 50%;"> 
                      % end
                        
                      % if y['qtype'] == 'num_na':
                        <p id="q_{{y['qid']}}_msg"></p> 
                        <button class="btn btn-round" id="q{{y['qid']}}_rad" style="margin-bottom: 4px; white-space:normal;" onclick="select_radio_na('{{question_index}}')"><b>Not Applicable</b></button>
                        <button class="btn btn-round" id="q{{y['qid']}}_num_of_times" style="margin-bottom: 4px; white-space:normal;" style="display: none;" onclick="select_radio_num_Of_times('{{question_index}}')"><b>I want to enter number of times</b></button>
                        <p id="q_{{y['qid']}}_orbreak"><br>Or<br></p>
                        <input type="number" class="form-control" id="q_{{y['qid']}}_data" name="q_{{y['qid']}}_data"  placeholder="Number of times" maxlength="10000000" onkeyup="checkValid('q_{{y['qid']}}_data', '{{y['range']}}')" value="0" style="width: 50%;">  
                      % end
                        
                      
                      % if y['qtype'] == 'bp':
                        <p id="q_{{y['qid']}}_sys_msg"></p>
                        <label for="q_{{y['qid']}}_sys_data" style="font-weight: 200; padding-left: 15px; font-size: 1em; display: block;">Systolic:</label>
                        <input type="text" class="form-control" id="q_{{y['qid']}}_sys_data" name="q_{{y['qid']}}.1_data"  placeholder="Systolic" style="width: 50%;">
                        <p id="q_{{y['qid']}}.dia_msg"></p>
                        <label for="q_{{y['qid']}}_dia_data" style="font-weight: 200; padding-left: 15px; font-size: 1em; display: block;">Diastolic:</label>
                        <input type="text" class="form-control" id="q_{{y['qid']}}_dia_data" name="q_{{y['qid']}}.2_data"  placeholder="Diastolic" style="width: 50%;">
                      % end
                      
                      % if y['qtype'] == 'pair_num_yymm':
                        <p id="q_{{y['qid']}}_yy_msg"></p>
                        <label for="q_{{y['qid']}}_yy_data" style="font-weight: 200; padding-left: 15px; font-size: 1em; display: block;">Years:</label>
                        <input type="text" class="form-control" id="q_{{y['qid']}}_yy_data" name="q_{{y['qid']}}_yy_data"  placeholder="Years 0 to 100" style="width: 50%;" min="0" max="60" onkeyup="checkValid('q_{{y['qid']}}_yy_data', '99')">
                        <p id="q_{{y['qid']}}_mm_msg"></p>
                        <label for="q_{{y['qid']}}_mm_data" style="font-weight: 200; padding-left: 15px; font-size: 1em; display: block;">Months:</label>
                        <input type="text" class="form-control" id="q_{{y['qid']}}_mm_data" name="q_{{y['qid']}}_mm_data"  placeholder="Months 0 to 12" style="width: 50%;" min="0" max="11" onkeyup="checkValid('q_{{y['qid']}}_mm_data', '11')">
                      % end
                        
                      % if y['qtype'] == 'time':
                        <p id="q_{{y['qid']}}_hh_msg"></p>
                        <label for="q_{{y['qid']}}_hh_data" style="font-weight: 200; padding-left: 15px; font-size: 1em; display: block;">Hours:</label>
                        <input type="text" class="form-control" id="q_{{y['qid']}}_hh_data" name="q_{{y['qid']}}_hh_data"  placeholder="Hours 0 to 24" style="width: 50%;" min="0" max="23" onkeyup="checkValid('q_{{y['qid']}}_hh_data', '23')">
                        <p id="q_{{y['qid']}}_mm_msg"></p>
                        <label for="q_{{y['qid']}}_mm_data" style="font-weight: 200; padding-left: 15px; font-size: 1em; display: block;">Minutes:</label>
                        <input type="text" class="form-control" id="q_{{y['qid']}}_mm_data" name="q_{{y['qid']}}_mm_data"  placeholder="Minutes 0 to 59" style="width: 50%;" min="0" max="59" onkeyup="checkValid('q_{{y['qid']}}_mm_data', '59')">
                      % end

                      % if y['qtype'] == 'date':
                        <p id="q_{{y['qid']}}_msg"></p>
                        <input type="date" class="form-control" id="q_{{y['qid']}}_data" name="q_{{y['qid']}}_data"  placeholder="{{y['ph']}}" style="width: 50%;">
                      % end

                      % if y['qtype'] == 'radio':
                        <p id="q_{{y['qid']}}_msg"></p>
                        % for z in y['ans']:
                          <button class="btn btn-round" id="q{{y['qid']}}_{{z['aid']}}" style="margin-bottom: 4px; white-space:normal;" onclick="select_radio('{{question_index}}', '{{z['aid']}}')"><b>{{z['value']}}</b></button>
                        % end 
                        <br> 
                        <input class="form-control" type="text" name="q_{{y['qid']}}_others_data" id="q_{{y['qid']}}_others_data" placeholder="Specify others" style="width: 100%; display: none;">     
                      % end

                    </div>

                     <p id="q_{{y['qid']}}_brk"><br></p>
                   
                  % end
                  % question_index=question_index+1
                % end
                
              <div class="col-md-6 ml-auto mr-auto text-center">
           <!--<a href="/home">-->
            <button class="btn btn-rose btn-raised" style="" onclick="validatesection('{{x['name']}}')">Validate Section</button>
                      
            <center> <p  style="font-weight: 400; padding-left: 15px; font-size: 0.8em; display: block; color: red;">Please click here to make sure you have entered or selected right information for all the mandatory questions in this section
                  </p></center>  
          
        </div>
                  
              </div>
            </div>
          </div>
        </div>
      % end

      <div class="row" style="margin-top: 15px; margin-bottom: 50px;">
        <div class="col-md-6 ml-auto mr-auto text-center">
           <!--<a href="/home">-->
            <button class="btn btn-rose btn-raised" style="" onclick="on_submit()">Submit</button>
            <center><img id="done_spinner" src="img/spinner.gif" style="width: 75px; display: none;"></center>
          <!--</a>-->
          <br>
          <a href="/ncdhome">Go To Home</a>
          <!--<br>
          <a href="/logout">Logout</a> -->
        </div>
      </div> 

    </div>   


    </div>
    
  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js" type="text/javascript"></script>
  <script src="../assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="../assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
  <script src="../assets/js/plugins/moment.min.js"></script>
  <!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
  <script src="../assets/js/plugins/bootstrap-datetimepicker.js" type="text/javascript"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="../assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
  <!--  Google Maps Plugin    -->
  <!-- Control Center for Material Kit: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/material-kit.js?v=2.0.7" type="text/javascript"></script>
</body>

</html>
