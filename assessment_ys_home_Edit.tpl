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
        
      memberId = GetUrlParameter('memberId');
      householdId = GetUrlParameter('householdId');
      var member = "IND_"+memberId;
      var household = "HH_"+householdId;
      document.getElementById('houseid').innerHTML = household
      document.getElementById('memberid').innerHTML = member
      
    //j=1
       //json_data=document.getElementById("json_value").value
        for(var i=0; i<json_data.data.length; i++){
        
        var question_id = json_data.data[i]['qid']
        /*if(json_data.data[i].ans_required=='false'){
            document.getElementById('q_'+question_id+'_q').style.display = 'none'
            document.getElementById('q_'+question_id+'_ig').style.display = 'none'
            document.getElementById('q_'+question_id+'_k_q').style.display = 'none'   
        }*/
        
        /*if(json_data.data[i].ans_required=='true' && json_data.data[i].answered=='Y'){
            document.getElementById('q_'+question_id+'_q').style.color='green'
            document.getElementById('q_'+question_id+'_k_q').style.color = 'green'
            //document.getElementById('q_'+question_id+'_q').style.display = 'none'
            //document.getElementById('q_'+question_id+'_ig').style.display = 'none'
            //document.getElementById('q_'+question_id+'_k_q').style.display = 'none'   
        }*/
            
        
    }  
    
      navigator.geolocation.getCurrentPosition(showPosition); 

      document.getElementById('q99.1_num_of_times').style.display = 'none'
      document.getElementById('q99.2_num_of_times').style.display = 'none'
      document.getElementById('q99.4_num_of_times').style.display = 'none'
      document.getElementById('q99.5_num_of_times').style.display = 'none'
      document.getElementById('q99.6_num_of_times').style.display = 'none'
      document.getElementById('q99.7_num_of_times').style.display = 'none'
      

      document.getElementById('q_7.1_q').style.display = 'none'
      document.getElementById('q_7.1_ig').style.display = 'none'
      document.getElementById('q_7.1_k_q').style.display = 'none'
        
        document.getElementById('q_63.1_q').style.display = 'none'
      document.getElementById('q_63.1_ig').style.display = 'none'
      document.getElementById('q_63.1_k_q').style.display = 'none'

      

    })
      
    

      
  </script> 

</head>    

<body class="login-page sidebar-collapse">
    <input type="hidden" name="lat" id ="lat">    
    <input type="hidden" name="lon" id ="lon">
    <input type="hidden" name="tps" id ="tps"> 
  
  <!-- <div class="page-header header-filter" style="background-image: url(''); background-size: cover; background-position: top center;"> -->
    <div class="container">
     
     <div class="card card-login">
        <div class="card-header card-header-rose text-center">
                <h4 class="card-title" style="padding-left: 3%; padding-right: 3%;">{{data['heading']}}</h4>
                <span class="card-title" style="float: left; padding-left: 1%;padding-top: 3%;"id="houseid"></span><span class="card-title" style="float: right;text-align: right;padding-right: 1%;padding-top: 3%;" id="memberid"></span>
              </div>
        </div>

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
                    % if y['answered'] == 'Y':
                        <p id="q_{{y['qid']}}_q" style="font-weight: 400; padding-left: 15px; font-size: 1em; display: block; color:green;">
                            {{y['qid']}} . {{!y['ques']['english']}} 
                        </p>
                    % else:
                        <p id="q_{{y['qid']}}_q" style="font-weight: 400; padding-left: 15px; font-size: 1em; display: block;">
                            {{y['qid']}} . {{!y['ques']['english']}} 
                        </p>
                    %  end
                    % if y['answered'] == 'Y':
                        <p id="q_{{y['qid']}}_k_q" style="font-weight: 400; padding-left: 15px; font-size: 1em; display: block; color:green;">
                          {{!y['ques']['kannada']}}
                     
                        </p>
                    % else:
                         <p id="q_{{y['qid']}}_k_q" style="font-weight: 400; padding-left: 15px; font-size: 1em; display: block;">
                          {{!y['ques']['kannada']}}
                     
                        </p>
                    % end
                    <div id="q_{{y['qid']}}_ig" class="input-group" style="padding-left: 15px; display: block;">
                      
                      % if y['qtype'] == 'text':
                        % if y['ans_required'] == 'true' and y['answered'] == 'Y':
                            <p id="q_{{y['qid']}}_msg"></p>
                            <input type="text" class="form-control" id="q_{{y['qid']}}_data" name="q_{{y['qid']}}_data"  placeholder="{{y['ph']}}" style="width: 100%;" onchange="markAnswered('{{question_index}}','text')" value="{{y['value']}}">
                        % end
                        % if y['ans_required'] == 'true' and y['answered'] == 'N':
                            <p id="q_{{y['qid']}}_msg"></p>
                            <input type="text" class="form-control" id="q_{{y['qid']}}_data" name="q_{{y['qid']}}_data"  placeholder="{{y['ph']}}" style="width: 100%;" onchange="markAnswered('{{question_index}}','text')" >
                        % end
                        % if y['ans_required'] == 'false':
                            <p id="q_{{y['qid']}}_msg"></p>
                            <input type="text" class="form-control" id="q_{{y['qid']}}_data" name="q_{{y['qid']}}_data"  placeholder="{{y['ph']}}" style="width: 100%;" onchange="markAnswered('{{question_index}}','text')" >
                        % end
                      % end
                      

                      % if y['qtype'] == 'num':
                        % if y['ans_required'] == 'true' and y['answered'] == 'Y':
                            <p id="q_{{y['qid']}}_msg"></p>
                            <input type="number" class="form-control" id="q_{{y['qid']}}_data" name="q_{{y['qid']}}_data"  placeholder="{{y['ph']}}" maxlength="10000000" onchange="checkValid('{{question_index}}','q_{{y['qid']}}_data', '{{y['range']}}')" value="{{y['value']}}" style="width: 50%;">
                        % end
                        % if y['ans_required'] == 'true' and y['answered'] == 'N':
                            <p id="q_{{y['qid']}}_msg"></p>
                            <input type="number" class="form-control" id="q_{{y['qid']}}_data" name="q_{{y['qid']}}_data"  placeholder="{{y['ph']}}" maxlength="10000000" onchange="checkValid('{{question_index}}','q_{{y['qid']}}_data', '{{y['range']}}')" value="0" style="width: 50%;">
                        % end
                         % if y['ans_required'] == 'false':
                            <p id="q_{{y['qid']}}_msg"></p>
                            <input type="number" class="form-control" id="q_{{y['qid']}}_data" name="q_{{y['qid']}}_data"  placeholder="{{y['ph']}}" maxlength="10000000" onchange="checkValid('{{question_index}}','q_{{y['qid']}}_data', '{{y['range']}}')" value="0" style="width: 50%;">
                        % end
                      % end
                        
                      % if y['qtype'] == 'num_na':
                        % if y['answered'] == 'N':
                            <p id="q_{{y['qid']}}_msg"></p> 
                            <button class="btn btn-round" id="q{{y['qid']}}_rad" style="margin-bottom: 4px; white-space:normal;" onclick="select_radio_na('{{question_index}}')"><b>Not Applicable</b></button>
                            <button class="btn btn-round" id="q{{y['qid']}}_num_of_times" style="margin-bottom: 4px; white-space:normal;" style="display: none;" onclick="select_radio_num_Of_times('{{question_index}}')"><b>I want to enter number of times</b></button>
                            <p id="q_{{y['qid']}}_orbreak"><br>Or<br></p>
                            <input type="number" class="form-control" id="q_{{y['qid']}}_data" name="q_{{y['qid']}}_data"  placeholder="Number of times" maxlength="10000000" onchange="checkValid('{{question_index}}','q_{{y['qid']}}_data', '{{y['range']}}')" value="0" style="width: 50%;">
                        % end
                        % if y['answered'] == 'Y':
                            <p id="q_{{y['qid']}}_msg"></p>
                            % if {{y['value']}}== '0':
                                <button class="btn btn-round btn-rose" id="q{{y['qid']}}_rad" style="margin-bottom: 4px; white-space:normal;" onclick="select_radio_na('{{question_index}}')"><b>Not Applicable</b></button>
                                <button class="btn btn-round " id="q{{y['qid']}}_num_of_times" style="margin-bottom: 4px; white-space:normal;" style="display: none;" onclick="select_radio_num_Of_times('{{question_index}}')"><b>I want to enter number of times</b></button>
                                <p id="q_{{y['qid']}}_orbreak"><br>Or<br></p>
                                <input type="number" class="form-control" id="q_{{y['qid']}}_data" name="q_{{y['qid']}}_data"  placeholder="Number of times" maxlength="10000000" onchange="checkValid('{{question_index}}','q_{{y['qid']}}_data', '{{y['range']}}')" value="0" style="width: 50%;">
                            % else:
                                <button class="btn btn-round" id="q{{y['qid']}}_rad" style="margin-bottom: 4px; white-space:normal;" onclick="select_radio_na('{{question_index}}')"><b>Not Applicable</b></button>
                                <button class="btn btn-round btn-rose" id="q{{y['qid']}}_num_of_times" style="margin-bottom: 4px; white-space:normal;" style="display: none;" onclick="select_radio_num_Of_times('{{question_index}}')"><b>I want to enter number of times</b></button>
                                <p id="q_{{y['qid']}}_orbreak"><br>Or<br></p>
                                <input type="number" class="form-control" id="q_{{y['qid']}}_data" name="q_{{y['qid']}}_data"  placeholder="Number of times" maxlength="10000000" onchange="checkValid('{{question_index}}','q_{{y['qid']}}_data', '{{y['range']}}')" value="{{y['value']}}" style="width: 50%;">
                            % end
                        % end
                        
                      % end
                        
                      
                      % if y['qtype'] == 'bp':
                        % if y['answered'] == 'N':
                            <p id="q_{{y['qid']}}_sys_msg"></p>
                            <label for="q_{{y['qid']}}_sys_data" style="font-weight: 200; padding-left: 15px; font-size: 1em; display: block;">Systolic:</label>
                            <input type="text" class="form-control" id="q_{{y['qid']}}_sys_data" name="q_{{y['qid']}}.1_data"  placeholder="Systolic" style="width: 50%;" onchange="markAnswered('{{question_index}}','bp_sys')">
                            <p id="q_{{y['qid']}}.dia_msg"></p>
                            <label for="q_{{y['qid']}}_dia_data" style="font-weight: 200; padding-left: 15px; font-size: 1em; display: block;">Diastolic:</label>
                            <input type="text" class="form-control" id="q_{{y['qid']}}_dia_data" name="q_{{y['qid']}}.2_data"  placeholder="Diastolic" style="width: 50%;" onchange="markAnswered('{{question_index}}','bp_dia')">
                        % end
                        % if y['answered'] == 'Y':
                            <p id="q_{{y['qid']}}_sys_msg"></p>
                            <label for="q_{{y['qid']}}_sys_data" style="font-weight: 200; padding-left: 15px; font-size: 1em; display: block;">Systolic:</label>
                            <input type="text" class="form-control" id="q_{{y['qid']}}_sys_data" name="q_{{y['qid']}}.1_data"  placeholder="Systolic" style="width: 50%;" onchange="markAnswered('{{question_index}}','bp_sys')" value="{{y['sys_value']}}">
                            <p id="q_{{y['qid']}}.dia_msg"></p>
                            <label for="q_{{y['qid']}}_dia_data" style="font-weight: 200; padding-left: 15px; font-size: 1em; display: block;">Diastolic:</label>
                            <input type="text" class="form-control" id="q_{{y['qid']}}_dia_data" name="q_{{y['qid']}}.2_data"  placeholder="Diastolic" style="width: 50%;" onchange="markAnswered('{{question_index}}','bp_dia')" value="{{y['dia_value']}}"> 
                        % end
                      % end
                        <!-- To be looked into -->
                      % if y['qtype'] == 'time':
                        % if y['ans_required'] == 'true':
                             % if y['answered'] == 'N':
                                <p id="q_{{y['qid']}}_hh_msg"></p>
                                <label for="q_{{y['qid']}}_hh_data" style="font-weight: 200; padding-left: 15px; font-size: 1em; display: block;">Hours:</label>
                                <input type="text" class="form-control" id="q_{{y['qid']}}_hh_data" name="q_{{y['qid']}}_hh_data"  placeholder="Hours 0 to 24" style="width: 50%;" min="0" max="23" onchange="checkValid('{{question_index}}','q_{{y['qid']}}_hh_data', '23')">
                                <p id="q_{{y['qid']}}_mm_msg"></p>
                                <label for="q_{{y['qid']}}_mm_data" style="font-weight: 200; padding-left: 15px; font-size: 1em; display: block;">Minutes:</label>
                                <input type="text" class="form-control" id="q_{{y['qid']}}_mm_data" name="q_{{y['qid']}}_mm_data"  placeholder="Minutes 0 to 59" style="width: 50%;" min="0" max="59" onchange="checkValid('{{question_index}}','q_{{y['qid']}}_mm_data', '59')">
                            % end
                            % if y['answered'] == 'Y':
                                <p id="q_{{y['qid']}}_hh_msg"></p>
                                <label for="q_{{y['qid']}}_hh_data" style="font-weight: 200; padding-left: 15px; font-size: 1em; display: block;">Hours:</label>
                                <input type="text" class="form-control" id="q_{{y['qid']}}_hh_data" name="q_{{y['qid']}}_hh_data"  placeholder="Hours 0 to 24" style="width: 50%;" min="0" max="23" onchange="checkValid('{{question_index}}','q_{{y['qid']}}_hh_data', '23')" value="{{y['hhvalue']}}">
                                <p id="q_{{y['qid']}}_mm_msg"></p>
                                <label for="q_{{y['qid']}}_mm_data" style="font-weight: 200; padding-left: 15px; font-size: 1em; display: block;">Minutes:</label>
                                <input type="text" class="form-control" id="q_{{y['qid']}}_mm_data" name="q_{{y['qid']}}_mm_data"  placeholder="Minutes 0 to 59" style="width: 50%;" min="0" max="59" onchange="checkValid('{{question_index}}','q_{{y['qid']}}_mm_data', '59')" value="{{y['mmvalue']}}">
                            % end
                        % end
                        % if y['ans_required'] == 'false':
                            <p id="q_{{y['qid']}}_hh_msg"></p>
                            <label for="q_{{y['qid']}}_hh_data" style="font-weight: 200; padding-left: 15px; font-size: 1em; display: block;">Hours:</label>
                            <input type="text" class="form-control" id="q_{{y['qid']}}_hh_data" name="q_{{y['qid']}}_hh_data"  placeholder="Hours 0 to 24" style="width: 50%;" min="0" max="23" onchange="checkValid('{{question_index}}','q_{{y['qid']}}_hh_data', '23')">
                            <p id="q_{{y['qid']}}_mm_msg"></p>
                            <label for="q_{{y['qid']}}_mm_data" style="font-weight: 200; padding-left: 15px; font-size: 1em; display: block;">Minutes:</label>
                            <input type="text" class="form-control" id="q_{{y['qid']}}_mm_data" name="q_{{y['qid']}}_mm_data"  placeholder="Minutes 0 to 59" style="width: 50%;" min="0" max="59" onchange="checkValid('{{question_index}}','q_{{y['qid']}}_mm_data', '59')">
                        % end
                      % end

                      % if y['qtype'] == 'date':
                         % if y['ans_required'] == 'true' and y['answered'] == 'Y':
                            <p id="q_{{y['qid']}}_msg"></p>
                            <input type="date" class="form-control" id="q_{{y['qid']}}_data" name="q_{{y['qid']}}_data"  placeholder="{{y['ph']}}" style="width: 50%;" onchange="markAnswered('{{question_index}}','date')" value="{{y['value']}}">
                        % end
                        % if y['ans_required'] == 'true' and y['answered'] == 'N':
                            <p id="q_{{y['qid']}}_msg"></p>
                            <input type="date" class="form-control" id="q_{{y['qid']}}_data" name="q_{{y['qid']}}_data"  placeholder="{{y['ph']}}" style="width: 50%;" onchange="markAnswered('{{question_index}}','date')">
                        % end
                        % if y['ans_required'] == 'false':
                            <p id="q_{{y['qid']}}_msg"></p>
                            <input type="date" class="form-control" id="q_{{y['qid']}}_data" name="q_{{y['qid']}}_data"  placeholder="{{y['ph']}}" style="width: 50%;" onchange="markAnswered('{{question_index}}','date')">
                        % end
                      % end

                      % if y['qtype'] == 'radio':
                        % if y['ans_required'] == 'true':
                            % if y['answered'] == 'Y':
                                <p id="q_{{y['qid']}}_msg"></p>
                                % for z in y['ans']:
                                    % if y['value']== z['aid']:
                                        <button class="btn btn-round btn-rose" id="q{{y['qid']}}_{{z['aid']}}" style="margin-bottom: 4px; white-space:normal;" onclick="select_radio('{{question_index}}', '{{z['aid']}}')"><b>{{z['value']}}</b></button>
                                    % else:
                                        <button class="btn btn-round" id="q{{y['qid']}}_{{z['aid']}}" style="margin-bottom: 4px; white-space:normal;" onclick="select_radio('{{question_index}}', '{{z['aid']}}')"><b>{{z['value']}}</b></button>
                                    %end
                                % end 
                                % if 'others_data' in y and y['others_data'] != "":
                                    <br> 
                                    <input class="form-control" type="text" name="q_{{y['qid']}}_others_data" id="q_{{y['qid']}}_others_data" placeholder="Specify others"  onchange="markAnswered('{{question_index}}','others')" style="width: 100%;" value="{{y['others_data']}}"> 
                                % else:
                                     <br> 
                                    <input class="form-control" type="text" name="q_{{y['qid']}}_others_data" id="q_{{y['qid']}}_others_data" placeholder="Specify others"  onchange="markAnswered('{{question_index}}','others')" style="width: 100%; display: none;">
                                % end
                            % else:
                                <p id="q_{{y['qid']}}_msg"></p>
                                % for z in y['ans']:
                                    <button class="btn btn-round" id="q{{y['qid']}}_{{z['aid']}}" style="margin-bottom: 4px; white-space:normal;" onclick="select_radio('{{question_index}}', '{{z['aid']}}')"><b>{{z['value']}}</b></button>
                                % end
                                <br> 
                                <input class="form-control" type="text" name="q_{{y['qid']}}_others_data" id="q_{{y['qid']}}_others_data" placeholder="Specify others"  onchange="markAnswered('{{question_index}}','others')" style="width: 100%; display: none;">    
                            % end
                        % else:
                            <p id="q_{{y['qid']}}_msg"></p>
                            % for z in y['ans']:
                                <button class="btn btn-round" id="q{{y['qid']}}_{{z['aid']}}" style="margin-bottom: 4px; white-space:normal;" onclick="select_radio('{{question_index}}', '{{z['aid']}}')"><b>{{z['value']}}</b></button>
                            % end
                            <br> 
                            <input class="form-control" type="text" name="q_{{y['qid']}}_others_data" id="q_{{y['qid']}}_others_data" placeholder="Specify others"  onchange="markAnswered('{{question_index}}','others')" style="width: 100%; display: none;">
                        % end
                      % end

                    </div>

                     <p id="q_{{y['qid']}}_brk"><br></p>   
                   
                  % end
                  % question_index=question_index+1
                % end
                
              <div class="col-md-6 ml-auto mr-auto text-center">
           <!--<a href="/home">-->
             <button class="btn btn-rose btn-raised save-later" style=""  onclick="on_saveForLater()">SAVE FOR LATER</button>  
                      
            <center> <p  style="font-weight: 800; padding-left: 15px; font-size: 1.0em; display: block; color: green;">Once you have answered the questions, the questions turn to green colour. Please verify in the section if all the questions are green, hence indicating they are answered
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
            <button class="btn btn-rose btn-raised" style="" onclick="on_submitNew()">Submit</button>
            <center><img id="done_spinner" src="img/spinner.gif" style="width: 75px; display: none;"></center>
          <!--</a>-->
          <br>
          
             <center><p style="padding-left: 15px; font-size: 0.5em;">JSON DATA: <span id="jsondata" style="font-weight: bold; padding-left: 15px; font-size: 1.2em;"></span></p></center>
            
            <a href="/ysHome">Go To Home</a>
            <br>
          <br>
          <a href="/logout">Logout</a>        
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