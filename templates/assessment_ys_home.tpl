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
  var latitude;
var longitude;
var timestamp; 
var memberId;
var householdId;
    $(document).ready(function(){

      var user_name = localStorage.getItem("user_name");
  
  if(!user_name){
    window.location.href = "/login";
  }

      memberId = GetUrlParameter('memberId');
      householdId = GetUrlParameter('householdId');
      var member = "IND_"+memberId;
      var household = "HH_"+householdId;
      document.getElementById('houseid').innerHTML = household
      document.getElementById('memberid').innerHTML = member
      
      
      //$('#houseid').html("Household_ID : "+household);
      //$('#memberid').html("Member_ID : "+member);

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
      
      for(var i=0; i<json_data.data.length; i++){
        
        json_data.data[i].ans_required='true'
        json_data.data[i].answered='N'
        json_data.data[i].value=''     
        
    } 
     navigator.geolocation.getCurrentPosition(showPosition); 

    


      $(".save-later1234").click(function(){

   memberId = GetUrlParameter('memberId');
   householdId = GetUrlParameter('householdId');
        latlongtimestamp();

        setTimeout(function() {
               
           
var latlong = latitude+","+longitude;
var member = "IND_"+memberId;
var household = "HH_"+householdId;
json_data.householdId = household;
json_data.updatedTime=timestamp;
json_data.memberId=member;
json_data.userid=localStorage.getItem("userid");
json_data.location=latlong;

var assessmentMetaData={
      "householdId":household,
      "memberId":member,
      "userid": localStorage.getItem("userid"),
      "updatedTime":timestamp

}


// alert(no_rows);
console.log(assessmentMetaData);

$.ajax({
        type: "POST",
        url: '/assessmentSaveLater',
        data: JSON.stringify(json_data),
        contentType: "application/json",
        success: function (data) {
          $("#spinner").fadeOut("slow");
          console.log(data);
          var json = $.parseJSON(data);
          if (json.msg == "Success"){
            // console.log(members);
            localStorage.setItem('household_members',JSON.stringify(json));          
            console.log("Success");
             window.history.back();
          }
       },
       error: function(data){
        $("#spinner").fadeOut("slow");
        alert("Technical Error!");
       }

     });



},
2000);




      });

      $("#final_submit").click(function(){

        memberId = GetUrlParameter('memberId');
        householdId = GetUrlParameter('householdId');

        latlongtimestamp();

        setTimeout(function() {
               
           
var latlong = latitude+","+longitude;
var member = "IND_"+memberId;
var household = "HH_"+householdId;

var assessmentMetaData={
      "householdId":household,
      "memberId":member,
      "userid": localStorage.getItem("userid"),
      "completeLocation" : latlong,
      "updatedTime":timestamp

}

// alert(no_rows);
console.log(assessmentMetaData);

$.ajax({
        type: "POST",
        url: '/assessmentFinalSubmit',
        data: JSON.stringify(assessmentMetaData),
        contentType: "application/json",
        success: function (data) {
          $("#spinner").fadeOut("slow");
          console.log(data);
          var json = $.parseJSON(data);
          if (json.msg == "Success"){
            localStorage.setItem('household_members',JSON.stringify(json));
            window.history.back();
          }
       },
       error: function(data){
        $("#spinner").fadeOut("slow");
        alert("Technical Error!");
       }

     });



},
2000);



      });

      $("#logout").click(function(){
    localStorage.clear();
    location.reload();

  });



    });

function GetUrlParameter(sParam)

{
    var sPageURL = window.location.search.substring(1);

    var sURLVariables = sPageURL.split('&');

    for (var i = 0; i < sURLVariables.length; i++)
    {
        var sParameterName = sURLVariables[i].split('=');

        if (sParameterName[0] == sParam)

        {
            return sParameterName[1];
        }
    }
}


    function handle_errors(error) {  
    console.log(error);
}
function handle_geolocation_query(position){  
    latitude = position.coords.latitude;
    longitude = position.coords.longitude;
    timestamp = position.timestamp; 
    // alert(latitude);
}
function latlongtimestamp() {
  
navigator.geolocation.getCurrentPosition(handle_geolocation_query,handle_errors,{timeout:1000});
    
} 

function getLocation() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(showPosition);
  } else { 
    alert('navigotor geolocation not working')
    //x.innerHTML = "Geolocation is not supported by this browser.";
  }
}

function showPosition(position) {
    //alert("location2")
  latitude= position.coords.latitude;
    document.getElementById('lat').value=latitude
    
  longitude = position.coords.longitude;
     document.getElementById('lon').value=longitude
    
  timeatlocation=position.timestamp;
   
     document.getElementById('tps').value=timeatlocation
    
     alert("document.getElementById('lat').value"+document.getElementById('lat').value)
    alert("document.getElementById('lon').value"+document.getElementById('lon').value)
    alert("document.getElementById('tps').value"+document.getElementById('tps').value)
 
   
  
     
}

function on_saveForLater(){
    //getLocation();
    var today = new Date();
    var savetime=today.getDate()+"/"+(today.getMonth()+1)+"/"+today.getFullYear()+"-"+today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
    var latlong = document.getElementById('lat').value+","+document.getElementById('lon').value;
    var member = "IND_1"+memberId;
    var household = "HH_1"+householdId;
    json_data.householdId = household;
    json_data.updatedTime=savetime;
    json_data.memberId=member;
    json_data.userid=localStorage.getItem("userid");
    json_data.location=latlong;
  
     document.getElementById('jsondata').innerHTML = JSON.stringify(json_data)
    
     document.getElementById('done_spinner').style.display = 'block'

		var xhttp = new XMLHttpRequest();
	    xhttp.onreadystatechange = function() {
	        if (this.readyState == 4 && this.status == 200) {
	          //console.log(this.responseText);
	          window.location.href = '/ysSurveyorStatus'
	        }
	    };
	    xhttp.open("POST", "/assessmentSaveLater", true);
	    xhttp.setRequestHeader("Content-type", "application/json");
	    xhttp.send('data='+(JSON.stringify(data_payload)));

	    console.log(JSON.stringify(data_payload))
      
		
    
    
    
}
  
  </script> 

</head>

<body class="login-page sidebar-collapse">
 <input type="hidden" name="lat" id ="lat">    
    <input type="hidden" name="lon" id ="lon">
    <input type="hidden" name="tps" id ="tps">   
  
  <!-- <div class="page-header header-filter" style="background-image: url(''); background-size: cover; background-position: top center;"> -->
    <div class="container">

      
      <!--<div class="row">
        <div class="col-md-3">
          <span class="card-title" style="float: left;padding-top: 7%;"id="houseid"></span><span class="card-title" style="text-align: right;float: right;padding-top: 7%;" id="memberid"></span>
        </div>
      </div>-->
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
                    <p id="q_{{y['qid']}}_q" style="font-weight: 400; padding-left: 15px; font-size: 1em; display: block;">
                        {{y['qid']}}. {{!y['ques']['english']}} 
                    </p>    
                  
                  <p id="q_{{y['qid']}}_k_q" style="font-weight: 400; padding-left: 15px; font-size: 1em; display: block;">
                      {{!y['ques']['kannada']}} 
                     
                    </p>  
                  
                    <div id="q_{{y['qid']}}_ig" class="input-group" style="padding-left: 15px; display: block;">
                      
                      % if y['qtype'] == 'text':
                        <p id="q_{{y['qid']}}_msg"></p>
                        <input type="text" class="form-control" id="q_{{y['qid']}}_data" name="q_{{y['qid']}}_data"  placeholder="{{y['ph']}}" style="width: 100%;" onchange="markAnswered('{{question_index}}','text')">     
                      % end

                      % if y['qtype'] == 'num':
                        <p id="q_{{y['qid']}}_msg"></p>
                        <input type="number" class="form-control" id="q_{{y['qid']}}_data" name="q_{{y['qid']}}_data"  placeholder="{{y['ph']}}" maxlength="10000000" onchange="checkValid('{{question_index}}','q_{{y['qid']}}_data', '{{y['range']}}')" value="0" style="width: 50%;"> 
                      % end
                        
                      % if y['qtype'] == 'num_na':
                        <p id="q_{{y['qid']}}_msg"></p> 
                        <button class="btn btn-round" id="q{{y['qid']}}_rad" style="margin-bottom: 4px; white-space:normal;" onclick="select_radio_na('{{question_index}}')"><b>Not Applicable</b></button>
                        <button class="btn btn-round" id="q{{y['qid']}}_num_of_times" style="margin-bottom: 4px; white-space:normal;" style="display: none;" onclick="select_radio_num_Of_times('{{question_index}}')"><b>I want to enter number of times</b></button>
                        <p id="q_{{y['qid']}}_orbreak"><br>Or<br></p>
                        <input type="number" class="form-control" id="q_{{y['qid']}}_data" name="q_{{y['qid']}}_data"  placeholder="Number of times" maxlength="10000000" onchange="checkValid('{{question_index}}','q_{{y['qid']}}_data', '{{y['range']}}')" value="0" style="width: 50%;">  
                      % end
                        
                      
                      % if y['qtype'] == 'bp':
                        <p id="q_{{y['qid']}}_sys_msg"></p>
                        <label for="q_{{y['qid']}}_sys_data" style="font-weight: 200; padding-left: 15px; font-size: 1em; display: block;">Systolic:</label>
                        <input type="text" class="form-control" id="q_{{y['qid']}}_sys_data" name="q_{{y['qid']}}.1_data"  placeholder="Systolic" style="width: 50%;" onchange="markAnswered('{{question_index}}','bp_sys')">
                        <p id="q_{{y['qid']}}.dia_msg"></p>
                        <label for="q_{{y['qid']}}_dia_data" style="font-weight: 200; padding-left: 15px; font-size: 1em; display: block;">Diastolic:</label>
                        <input type="text" class="form-control" id="q_{{y['qid']}}_dia_data" name="q_{{y['qid']}}.2_data"  placeholder="Diastolic" style="width: 50%;" onchange="markAnswered('{{question_index}}','bp_dia')">
                      % end
                      
                      % if y['qtype'] == 'pair_num_yymm':
                        <p id="q_{{y['qid']}}_yy_msg"></p> 
                        <label for="q_{{y['qid']}}_yy_data" style="font-weight: 200; padding-left: 15px; font-size: 1em; display: block;">Years:</label>
                        <input type="text" class="form-control" id="q_{{y['qid']}}_yy_data" name="q_{{y['qid']}}_yy_data"  placeholder="Years 0 to 100" style="width: 50%;" min="0" max="60" onchange="checkValid('{{question_index}}','q_{{y['qid']}}_yy_data', '99')">
                        <p id="q_{{y['qid']}}_mm_msg"></p>
                        <label for="q_{{y['qid']}}_mm_data" style="font-weight: 200; padding-left: 15px; font-size: 1em; display: block;">Months:</label>
                        <input type="text" class="form-control" id="q_{{y['qid']}}_mm_data" name="q_{{y['qid']}}_mm_data"  placeholder="Months 0 to 12" style="width: 50%;" min="0" max="11" onchange="checkValid('{{question_index}}','q_{{y['qid']}}_mm_data', '11')">
                      % end
                        
                      % if y['qtype'] == 'time':
                        <p id="q_{{y['qid']}}_hh_msg"></p>
                        <label for="q_{{y['qid']}}_hh_data" style="font-weight: 200; padding-left: 15px; font-size: 1em; display: block;">Hours:</label>
                        <input type="text" class="form-control" id="q_{{y['qid']}}_hh_data" name="q_{{y['qid']}}_hh_data"  placeholder="Hours 0 to 24" style="width: 50%;" min="0" max="23" onchange="checkValid('{{question_index}}','q_{{y['qid']}}_hh_data', '23')">
                        <p id="q_{{y['qid']}}_mm_msg"></p>
                        <label for="q_{{y['qid']}}_mm_data" style="font-weight: 200; padding-left: 15px; font-size: 1em; display: block;">Minutes:</label>
                        <input type="text" class="form-control" id="q_{{y['qid']}}_mm_data" name="q_{{y['qid']}}_mm_data"  placeholder="Minutes 0 to 59" style="width: 50%;" min="0" max="59" onchange="checkValid('{{question_index}}','q_{{y['qid']}}_mm_data', '59')">
                      % end

                      % if y['qtype'] == 'date':
                        <p id="q_{{y['qid']}}_msg"></p>
                        <input type="date" class="form-control" id="q_{{y['qid']}}_data" name="q_{{y['qid']}}_data"  placeholder="{{y['ph']}}" style="width: 50%;" onchange="markAnswered('{{question_index}}','date')">  
                      % end

                      % if y['qtype'] == 'radio':
                        <p id="q_{{y['qid']}}_msg"></p>
                        % for z in y['ans']:
                          <button class="btn btn-round" id="q{{y['qid']}}_{{z['aid']}}" style="margin-bottom: 4px; white-space:normal;" onclick="select_radio('{{question_index}}', '{{z['aid']}}')"><b>{{z['value']}}</b></button>
                        % end 
                        <br> 
                        <input class="form-control" type="text" name="q_{{y['qid']}}_others_data" id="q_{{y['qid']}}_others_data" placeholder="Specify others"  onchange="markAnswered('{{question_index}}','others')" style="width: 100%; display: none;">      
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
            <button class="btn btn-rose btn-raised" style="" id="final_submit">Submit</button>
            <!-- <center><img id="done_spinner" src="img/spinner.gif" style="width: 75px; display: none;"></center> -->
          <!--</a>-->
          <br>
          <a href="/ysHome">Go To Home</a>
            <br>
            <center><p style="padding-left: 15px; font-size: 0.5em;">JSON DATA: <span id="jsondata" style="font-weight: bold; padding-left: 15px; font-size: 1.2em;"></span></p></center>
          <br>
          <a id="logout">Logout</a>
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
