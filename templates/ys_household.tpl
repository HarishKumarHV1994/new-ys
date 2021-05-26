<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="">
  <link rel="icon" type="image/png" href="">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    YUVASPANDANA HOUSEHOLD
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

  <!--<script src="js/stress.js"></script>

  <script type="text/javascript">
   
  </script>-->
    
<script>

var status;
var sno = [];
var load;
var no_rows;
var row;
var mainArr = [];
var tmpArr = [];
var members = [];
var latitude;
var longitude;
var timestamp;

$(document).ready(function(){
 var user_name = localStorage.getItem("user_name");
 var num_rows = localStorage.getItem("no_rows");
 var householdid = localStorage.getItem("householdId");
 var household_members = $.parseJSON(localStorage.getItem("household_members"));

  // if(household_members){
    
  //   console.log(household_members.members.length);
  // }
  if(!user_name){
    window.location.href = "/login";
  }
     
  if(num_rows){
     
    no_rows = num_rows;
    // alert(no_rows);

    if(no_rows==0){

      // alert(options_element_1);
        $.each(household_members.members , function(index, item) { 
          if(item.memberId == 'IND_1'){
            
            if(item.memberInterviewStatus == 'InProgress'){
               document.getElementById('notassessmentbutton1').style.display = 'none';
              document.getElementById('assessmentbutton1').style.display = 'none';
              document.getElementById('inprogressassessmentbutton1').style.display = 'block';
              document.getElementById('completeassessmentbutton1').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Completed'){
               document.getElementById('notassessmentbutton1').style.display = 'none';
              document.getElementById('assessmentbutton1').style.display = 'none';
              document.getElementById('inprogressassessmentbutton1').style.display = 'none';
              document.getElementById('completeassessmentbutton1').style.display = 'block';

            }
            if(item.memberInterviewStatus == 'TobeStarted'){
               document.getElementById('notassessmentbutton1').style.display = 'none';
              document.getElementById('assessmentbutton1').style.display = 'block';
              document.getElementById('inprogressassessmentbutton1').style.display = 'none';
              document.getElementById('completeassessmentbutton1').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Not Applicable'){
               document.getElementById('notassessmentbutton1').style.display = 'block';
              document.getElementById('assessmentbutton1').style.display = 'none';
              document.getElementById('inprogressassessmentbutton1').style.display = 'none';
              document.getElementById('completeassessmentbutton1').style.display = 'none';

            }

          }
    
        });
            
            document.getElementById('member1').style.display = 'block';
             document.getElementById('member2').style.display = 'none';
            document.getElementById('member3').style.display = 'none';
            document.getElementById('member4').style.display = 'none';
            document.getElementById('member5').style.display = 'none';
           
        
    }
    
    if(no_rows==1){

       $.each(household_members.members , function(index, item) { 
           if(item.memberId == 'IND_1'){
            
            if(item.memberInterviewStatus == 'InProgress'){
               document.getElementById('notassessmentbutton1').style.display = 'none';
              document.getElementById('assessmentbutton1').style.display = 'none';
              document.getElementById('inprogressassessmentbutton1').style.display = 'block';
              document.getElementById('completeassessmentbutton1').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Completed'){
               document.getElementById('notassessmentbutton1').style.display = 'none';
              document.getElementById('assessmentbutton1').style.display = 'none';
              document.getElementById('inprogressassessmentbutton1').style.display = 'none';
              document.getElementById('completeassessmentbutton1').style.display = 'block';

            }
            if(item.memberInterviewStatus == 'TobeStarted'){
               document.getElementById('notassessmentbutton1').style.display = 'none';
              document.getElementById('assessmentbutton1').style.display = 'block';
              document.getElementById('inprogressassessmentbutton1').style.display = 'none';
              document.getElementById('completeassessmentbutton1').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Not Applicable'){
               document.getElementById('notassessmentbutton1').style.display = 'block';
              document.getElementById('assessmentbutton1').style.display = 'none';
              document.getElementById('inprogressassessmentbutton1').style.display = 'none';
              document.getElementById('completeassessmentbutton1').style.display = 'none';

            }

          }

          if(item.memberId == 'IND_2'){
            
            if(item.memberInterviewStatus == 'InProgress'){
               document.getElementById('notassessmentbutton2').style.display = 'none';
              document.getElementById('assessmentbutton2').style.display = 'none';
              document.getElementById('inprogressassessmentbutton1').style.display = 'block';
              document.getElementById('completeassessmentbutton1').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Completed'){
               document.getElementById('notassessmentbutton2').style.display = 'none';
              document.getElementById('assessmentbutton2').style.display = 'none';
              document.getElementById('inprogressassessmentbutton2').style.display = 'none';
              document.getElementById('completeassessmentbutton2').style.display = 'block';

            }
            if(item.memberInterviewStatus == 'TobeStarted'){
               document.getElementById('notassessmentbutton2').style.display = 'none';
              document.getElementById('assessmentbutton2').style.display = 'block';
              document.getElementById('inprogressassessmentbutton2').style.display = 'none';
              document.getElementById('completeassessmentbutton2').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Not Applicable'){
               document.getElementById('notassessmentbutton2').style.display = 'block';
              document.getElementById('assessmentbutton2').style.display = 'none';
              document.getElementById('inprogressassessmentbutton2').style.display = 'none';
              document.getElementById('completeassessmentbutton2').style.display = 'none';

            }

          }

          
    

          });

            
            document.getElementById('member1').style.display = 'block';

            document.getElementById('member2').style.display = 'block';
           
            document.getElementById('member3').style.display = 'none';
            document.getElementById('member4').style.display = 'none';
            document.getElementById('member5').style.display = 'none';
            
    }
    
    if(no_rows==2){


       $.each(household_members.members , function(index, item) { 
           if(item.memberId == 'IND_1'){
            
            if(item.memberInterviewStatus == 'InProgress'){
               document.getElementById('notassessmentbutton1').style.display = 'none';
              document.getElementById('assessmentbutton1').style.display = 'none';
              document.getElementById('inprogressassessmentbutton1').style.display = 'block';
              document.getElementById('completeassessmentbutton1').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Completed'){
               document.getElementById('notassessmentbutton1').style.display = 'none';
              document.getElementById('assessmentbutton1').style.display = 'none';
              document.getElementById('inprogressassessmentbutton1').style.display = 'none';
              document.getElementById('completeassessmentbutton1').style.display = 'block';

            }
            if(item.memberInterviewStatus == 'TobeStarted'){
               document.getElementById('notassessmentbutton1').style.display = 'none';
              document.getElementById('assessmentbutton1').style.display = 'block';
              document.getElementById('inprogressassessmentbutton1').style.display = 'none';
              document.getElementById('completeassessmentbutton1').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Not Applicable'){
               document.getElementById('notassessmentbutton1').style.display = 'block';
              document.getElementById('assessmentbutton1').style.display = 'none';
              document.getElementById('inprogressassessmentbutton1').style.display = 'none';
              document.getElementById('completeassessmentbutton1').style.display = 'none';

            }

          }

          if(item.memberId == 'IND_2'){
            
            if(item.memberInterviewStatus == 'InProgress'){
               document.getElementById('notassessmentbutton2').style.display = 'none';
              document.getElementById('assessmentbutton2').style.display = 'none';
              document.getElementById('inprogressassessmentbutton1').style.display = 'block';
              document.getElementById('completeassessmentbutton1').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Completed'){
               document.getElementById('notassessmentbutton2').style.display = 'none';
              document.getElementById('assessmentbutton2').style.display = 'none';
              document.getElementById('inprogressassessmentbutton2').style.display = 'none';
              document.getElementById('completeassessmentbutton2').style.display = 'block';

            }
            if(item.memberInterviewStatus == 'TobeStarted'){
               document.getElementById('notassessmentbutton2').style.display = 'none';
              document.getElementById('assessmentbutton2').style.display = 'block';
              document.getElementById('inprogressassessmentbutton2').style.display = 'none';
              document.getElementById('completeassessmentbutton2').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Not Applicable'){
               document.getElementById('notassessmentbutton2').style.display = 'block';
              document.getElementById('assessmentbutton2').style.display = 'none';
              document.getElementById('inprogressassessmentbutton2').style.display = 'none';
              document.getElementById('completeassessmentbutton2').style.display = 'none';

            }

          }

          if(item.memberId == 'IND_3'){
            
            if(item.memberInterviewStatus == 'InProgress'){
               document.getElementById('notassessmentbutton3').style.display = 'none';
              document.getElementById('assessmentbutton3').style.display = 'none';
              document.getElementById('inprogressassessmentbutton3').style.display = 'block';
              document.getElementById('completeassessmentbutton3').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Completed'){
               document.getElementById('notassessmentbutton3').style.display = 'none';
              document.getElementById('assessmentbutton3').style.display = 'none';
              document.getElementById('inprogressassessmentbutton3').style.display = 'none';
              document.getElementById('completeassessmentbutton3').style.display = 'block';

            }
            if(item.memberInterviewStatus == 'TobeStarted'){
               document.getElementById('notassessmentbutton3').style.display = 'none';
              document.getElementById('assessmentbutton3').style.display = 'block';
              document.getElementById('inprogressassessmentbutton3').style.display = 'none';
              document.getElementById('completeassessmentbutton3').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Not Applicable'){
               document.getElementById('notassessmentbutton3').style.display = 'block';
              document.getElementById('assessmentbutton3').style.display = 'none';
              document.getElementById('inprogressassessmentbutton3').style.display = 'none';
              document.getElementById('completeassessmentbutton3').style.display = 'none';

            }

          }

         

          });

            document.getElementById('member1').style.display = 'block';

            document.getElementById('member2').style.display = 'block';

             document.getElementById('member3').style.display = 'block';

            document.getElementById('member4').style.display = 'none';
            document.getElementById('member5').style.display = 'none';
           
    }
    
    if(no_rows==3){

       $.each(household_members.members , function(index, item) { 
           if(item.memberId == 'IND_1'){
            
            if(item.memberInterviewStatus == 'InProgress'){
               document.getElementById('notassessmentbutton1').style.display = 'none';
              document.getElementById('assessmentbutton1').style.display = 'none';
              document.getElementById('inprogressassessmentbutton1').style.display = 'block';
              document.getElementById('completeassessmentbutton1').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Completed'){
               document.getElementById('notassessmentbutton1').style.display = 'none';
              document.getElementById('assessmentbutton1').style.display = 'none';
              document.getElementById('inprogressassessmentbutton1').style.display = 'none';
              document.getElementById('completeassessmentbutton1').style.display = 'block';

            }
            if(item.memberInterviewStatus == 'TobeStarted'){
               document.getElementById('notassessmentbutton1').style.display = 'none';
              document.getElementById('assessmentbutton1').style.display = 'block';
              document.getElementById('inprogressassessmentbutton1').style.display = 'none';
              document.getElementById('completeassessmentbutton1').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Not Applicable'){
               document.getElementById('notassessmentbutton1').style.display = 'block';
              document.getElementById('assessmentbutton1').style.display = 'none';
              document.getElementById('inprogressassessmentbutton1').style.display = 'none';
              document.getElementById('completeassessmentbutton1').style.display = 'none';

            }

          }

          if(item.memberId == 'IND_2'){
            
            if(item.memberInterviewStatus == 'InProgress'){
               document.getElementById('notassessmentbutton2').style.display = 'none';
              document.getElementById('assessmentbutton2').style.display = 'none';
              document.getElementById('inprogressassessmentbutton1').style.display = 'block';
              document.getElementById('completeassessmentbutton1').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Completed'){
               document.getElementById('notassessmentbutton2').style.display = 'none';
              document.getElementById('assessmentbutton2').style.display = 'none';
              document.getElementById('inprogressassessmentbutton2').style.display = 'none';
              document.getElementById('completeassessmentbutton2').style.display = 'block';

            }
            if(item.memberInterviewStatus == 'TobeStarted'){
               document.getElementById('notassessmentbutton2').style.display = 'none';
              document.getElementById('assessmentbutton2').style.display = 'block';
              document.getElementById('inprogressassessmentbutton2').style.display = 'none';
              document.getElementById('completeassessmentbutton2').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Not Applicable'){
               document.getElementById('notassessmentbutton2').style.display = 'block';
              document.getElementById('assessmentbutton2').style.display = 'none';
              document.getElementById('inprogressassessmentbutton2').style.display = 'none';
              document.getElementById('completeassessmentbutton2').style.display = 'none';

            }

          }

          if(item.memberId == 'IND_3'){
            
            if(item.memberInterviewStatus == 'InProgress'){
               document.getElementById('notassessmentbutton3').style.display = 'none';
              document.getElementById('assessmentbutton3').style.display = 'none';
              document.getElementById('inprogressassessmentbutton3').style.display = 'block';
              document.getElementById('completeassessmentbutton3').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Completed'){
               document.getElementById('notassessmentbutton3').style.display = 'none';
              document.getElementById('assessmentbutton3').style.display = 'none';
              document.getElementById('inprogressassessmentbutton3').style.display = 'none';
              document.getElementById('completeassessmentbutton3').style.display = 'block';

            }
            if(item.memberInterviewStatus == 'TobeStarted'){
               document.getElementById('notassessmentbutton3').style.display = 'none';
              document.getElementById('assessmentbutton3').style.display = 'block';
              document.getElementById('inprogressassessmentbutton3').style.display = 'none';
              document.getElementById('completeassessmentbutton3').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Not Applicable'){
               document.getElementById('notassessmentbutton3').style.display = 'block';
              document.getElementById('assessmentbutton3').style.display = 'none';
              document.getElementById('inprogressassessmentbutton3').style.display = 'none';
              document.getElementById('completeassessmentbutton3').style.display = 'none';

            }

          }

          if(item.memberId == 'IND_4'){
            
            if(item.memberInterviewStatus == 'InProgress'){
               document.getElementById('notassessmentbutton4').style.display = 'none';
              document.getElementById('assessmentbutton4').style.display = 'none';
              document.getElementById('inprogressassessmentbutton4').style.display = 'block';
              document.getElementById('completeassessmentbutton4').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Completed'){
               document.getElementById('notassessmentbutton4').style.display = 'none';
              document.getElementById('assessmentbutton4').style.display = 'none';
              document.getElementById('inprogressassessmentbutton4').style.display = 'none';
              document.getElementById('completeassessmentbutton4').style.display = 'block';

            }
            if(item.memberInterviewStatus == 'TobeStarted'){
               document.getElementById('notassessmentbutton4').style.display = 'none';
              document.getElementById('assessmentbutton4').style.display = 'block';
              document.getElementById('inprogressassessmentbutton4').style.display = 'none';
              document.getElementById('completeassessmentbutton4').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Not Applicable'){
               document.getElementById('notassessmentbutton4').style.display = 'block';
              document.getElementById('assessmentbutton4').style.display = 'none';
              document.getElementById('inprogressassessmentbutton4').style.display = 'none';
              document.getElementById('completeassessmentbutton4').style.display = 'none';

            }

          }

          

          });

       document.getElementById('member1').style.display = 'block';

            document.getElementById('member2').style.display = 'block';

             document.getElementById('member3').style.display = 'block';

              document.getElementById('member4').style.display = 'block';

            document.getElementById('member5').style.display = 'none';
            
    }
    
    if(no_rows==4){

       $.each(household_members.members , function(index, item) { 
           if(item.memberId == 'IND_1'){
            
            if(item.memberInterviewStatus == 'InProgress'){
               document.getElementById('notassessmentbutton1').style.display = 'none';
              document.getElementById('assessmentbutton1').style.display = 'none';
              document.getElementById('inprogressassessmentbutton1').style.display = 'block';
              document.getElementById('completeassessmentbutton1').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Completed'){
               document.getElementById('notassessmentbutton1').style.display = 'none';
              document.getElementById('assessmentbutton1').style.display = 'none';
              document.getElementById('inprogressassessmentbutton1').style.display = 'none';
              document.getElementById('completeassessmentbutton1').style.display = 'block';

            }
            if(item.memberInterviewStatus == 'TobeStarted'){
               document.getElementById('notassessmentbutton1').style.display = 'none';
              document.getElementById('assessmentbutton1').style.display = 'block';
              document.getElementById('inprogressassessmentbutton1').style.display = 'none';
              document.getElementById('completeassessmentbutton1').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Not Applicable'){
               document.getElementById('notassessmentbutton1').style.display = 'block';
              document.getElementById('assessmentbutton1').style.display = 'none';
              document.getElementById('inprogressassessmentbutton1').style.display = 'none';
              document.getElementById('completeassessmentbutton1').style.display = 'none';

            }

          }

          if(item.memberId == 'IND_2'){
            
            if(item.memberInterviewStatus == 'InProgress'){
               document.getElementById('notassessmentbutton2').style.display = 'none';
              document.getElementById('assessmentbutton2').style.display = 'none';
              document.getElementById('inprogressassessmentbutton1').style.display = 'block';
              document.getElementById('completeassessmentbutton1').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Completed'){
               document.getElementById('notassessmentbutton2').style.display = 'none';
              document.getElementById('assessmentbutton2').style.display = 'none';
              document.getElementById('inprogressassessmentbutton2').style.display = 'none';
              document.getElementById('completeassessmentbutton2').style.display = 'block';

            }
            if(item.memberInterviewStatus == 'TobeStarted'){
               document.getElementById('notassessmentbutton2').style.display = 'none';
              document.getElementById('assessmentbutton2').style.display = 'block';
              document.getElementById('inprogressassessmentbutton2').style.display = 'none';
              document.getElementById('completeassessmentbutton2').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Not Applicable'){
               document.getElementById('notassessmentbutton2').style.display = 'block';
              document.getElementById('assessmentbutton2').style.display = 'none';
              document.getElementById('inprogressassessmentbutton2').style.display = 'none';
              document.getElementById('completeassessmentbutton2').style.display = 'none';

            }

          }

          if(item.memberId == 'IND_3'){
            
            if(item.memberInterviewStatus == 'InProgress'){
               document.getElementById('notassessmentbutton3').style.display = 'none';
              document.getElementById('assessmentbutton3').style.display = 'none';
              document.getElementById('inprogressassessmentbutton3').style.display = 'block';
              document.getElementById('completeassessmentbutton3').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Completed'){
               document.getElementById('notassessmentbutton3').style.display = 'none';
              document.getElementById('assessmentbutton3').style.display = 'none';
              document.getElementById('inprogressassessmentbutton3').style.display = 'none';
              document.getElementById('completeassessmentbutton3').style.display = 'block';

            }
            if(item.memberInterviewStatus == 'TobeStarted'){
               document.getElementById('notassessmentbutton3').style.display = 'none';
              document.getElementById('assessmentbutton3').style.display = 'block';
              document.getElementById('inprogressassessmentbutton3').style.display = 'none';
              document.getElementById('completeassessmentbutton3').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Not Applicable'){
               document.getElementById('notassessmentbutton3').style.display = 'block';
              document.getElementById('assessmentbutton3').style.display = 'none';
              document.getElementById('inprogressassessmentbutton3').style.display = 'none';
              document.getElementById('completeassessmentbutton3').style.display = 'none';

            }

          }

          if(item.memberId == 'IND_4'){
            
            if(item.memberInterviewStatus == 'InProgress'){
               document.getElementById('notassessmentbutton4').style.display = 'none';
              document.getElementById('assessmentbutton4').style.display = 'none';
              document.getElementById('inprogressassessmentbutton4').style.display = 'block';
              document.getElementById('completeassessmentbutton4').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Completed'){
               document.getElementById('notassessmentbutton4').style.display = 'none';
              document.getElementById('assessmentbutton4').style.display = 'none';
              document.getElementById('inprogressassessmentbutton4').style.display = 'none';
              document.getElementById('completeassessmentbutton4').style.display = 'block';

            }
            if(item.memberInterviewStatus == 'TobeStarted'){
               document.getElementById('notassessmentbutton4').style.display = 'none';
              document.getElementById('assessmentbutton4').style.display = 'block';
              document.getElementById('inprogressassessmentbutton4').style.display = 'none';
              document.getElementById('completeassessmentbutton4').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Not Applicable'){
               document.getElementById('notassessmentbutton4').style.display = 'block';
              document.getElementById('assessmentbutton4').style.display = 'none';
              document.getElementById('inprogressassessmentbutton4').style.display = 'none';
              document.getElementById('completeassessmentbutton4').style.display = 'none';

            }

          }

          if(item.memberId == 'IND_5'){
            
            if(item.memberInterviewStatus == 'InProgress'){
               document.getElementById('notassessmentbutton5').style.display = 'none';
              document.getElementById('assessmentbutton5').style.display = 'none';
              document.getElementById('inprogressassessmentbutton5').style.display = 'block';
              document.getElementById('completeassessmentbutton5').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Completed'){
               document.getElementById('notassessmentbutton5').style.display = 'none';
              document.getElementById('assessmentbutton5').style.display = 'none';
              document.getElementById('inprogressassessmentbutton5').style.display = 'none';
              document.getElementById('completeassessmentbutton5').style.display = 'block';

            }
            if(item.memberInterviewStatus == 'TobeStarted'){
               document.getElementById('notassessmentbutton5').style.display = 'none';
              document.getElementById('assessmentbutton5').style.display = 'block';
              document.getElementById('inprogressassessmentbutton5').style.display = 'none';
              document.getElementById('completeassessmentbutton5').style.display = 'none';

            }
            if(item.memberInterviewStatus == 'Not Applicable'){
               document.getElementById('notassessmentbutton5').style.display = 'block';
              document.getElementById('assessmentbutton5').style.display = 'none';
              document.getElementById('inprogressassessmentbutton5').style.display = 'none';
              document.getElementById('completeassessmentbutton5').style.display = 'none';

            }

          }
    

          });

            document.getElementById('member1').style.display = 'block';

            document.getElementById('member2').style.display = 'block';

             document.getElementById('member3').style.display = 'block';

              document.getElementById('member4').style.display = 'block';

            document.getElementById('member5').style.display = 'block';

            // var agevalue = $('#agegoup_1').find(":selected").val();
            // var agevalue2 = $('#agegoup_2').find(":selected").val();
            // var agevalue3 = $('#agegoup_3').find(":selected").val();
            // var agevalue4 = $('#agegoup_4').find(":selected").val();
            // var agevalue5 = $('#agegoup_5').find(":selected").val();
            // if(agevalue == 'Yes'){
            //   document.getElementById('assessmentbutton1').style.display = 'block';
            //   document.getElementById('notassessmentbutton1').style.display = 'none';
            // }
            // else{
            //   document.getElementById('notassessmentbutton1').style.display = 'block';
            //    document.getElementById('assessmentbutton1').style.display = 'none';
            // }
            // if(agevalue2 == 'Yes'){
            //   document.getElementById('assessmentbutton2').style.display = 'block';
            //   document.getElementById('notassessmentbutton2').style.display = 'none';
            // }
            // else{
            //   document.getElementById('notassessmentbutton2').style.display = 'block';
            //   document.getElementById('assessmentbutton2').style.display = 'none';
            // }
            // if(agevalue3 == 'Yes'){
            //   document.getElementById('assessmentbutton3').style.display = 'block';
            //   document.getElementById('notassessmentbutton3').style.display = 'none';
            // }
            // else{
            //   document.getElementById('notassessmentbutton3').style.display = 'block';
            //   document.getElementById('assessmentbutton3').style.display = 'none';
            // }
            // if(agevalue4 == 'Yes'){
            //   document.getElementById('assessmentbutton4').style.display = 'block';
            //   document.getElementById('notassessmentbutton4').style.display = 'none';
            // }
            // else{
            //   document.getElementById('notassessmentbutton4').style.display = 'block';
            //   document.getElementById('assessmentbutton4').style.display = 'none';
            // }
            // if(agevalue5 == 'Yes'){
            //   document.getElementById('assessmentbutton5').style.display = 'block';
            //    document.getElementById('notassessmentbutton5').style.display = 'none';
            // }
            // else{
            //   document.getElementById('notassessmentbutton5').style.display = 'block';
            //    document.getElementById('assessmentbutton5').style.display = 'none';
            // }
           

           
        
            
          
    }

    document.getElementById('savehouseholdbutton').style.display = 'none'
    document.getElementById('familymemberbutton').style.display = 'none'
    
  }
  else{
    no_rows = 0;
     document.getElementById('member2').style.display = 'none'
    document.getElementById('member3').style.display = 'none'
    document.getElementById('member4').style.display = 'none'
    document.getElementById('member5').style.display = 'none'
    
    document.getElementById('assessmentbutton1').style.display = 'none'
    document.getElementById('assessmentbutton2').style.display = 'none'
    document.getElementById('assessmentbutton3').style.display = 'none'
    document.getElementById('assessmentbutton4').style.display = 'none'
    document.getElementById('assessmentbutton5').style.display = 'none'

    document.getElementById('notassessmentbutton1').style.display = 'none'
    document.getElementById('notassessmentbutton2').style.display = 'none'
    document.getElementById('notassessmentbutton3').style.display = 'none'
    document.getElementById('notassessmentbutton4').style.display = 'none'
    document.getElementById('notassessmentbutton5').style.display = 'none'

    document.getElementById('inprogressassessmentbutton1').style.display = 'none'
    document.getElementById('inprogressassessmentbutton2').style.display = 'none'
    document.getElementById('inprogressassessmentbutton3').style.display = 'none'
    document.getElementById('inprogressassessmentbutton4').style.display = 'none'
    document.getElementById('inprogressassessmentbutton5').style.display = 'none'

    document.getElementById('completeassessmentbutton1').style.display = 'none'
    document.getElementById('completeassessmentbutton2').style.display = 'none'
    document.getElementById('completeassessmentbutton3').style.display = 'none'
    document.getElementById('completeassessmentbutton4').style.display = 'none'
    document.getElementById('completeassessmentbutton5').style.display = 'none'


  }
  if(householdid){
      $('#householdId').val(householdid);
      $("#displayhouseholdid").html("Household Id: HH_"+householdid);
  }
 


   
   
      

var country_state_city = [
  {
    "name": "Bagalkote",
    "short_name": "BGLKT",
    "taluks": [
      {"name": "Bagalkote","short_name": "BGLKT"},
      {"name":"Jamkhandi","short_name": "JMHKD"},
      {"name":"Mudhol","short_name": "MUDHL"},
      {"name":"Badami","short_name": "BDAMI"},
      {"name":"Bilagi","short_name": "BILGI"},
      {"name":"Hunagunda","short_name": "HNGND"},
      {"name":"Ilkal","short_name": "ILKAL"},
      {"name":"Rabkavi Banhatti","short_name": "RBKBH"},
      {"name":"Guledgudda","short_name": "GLDGD"},
      {"name":"Terdala","short_name": "TRDLA"}
    ]
  },
  {
    "name": "Ballari",
"short_name": "BLLRI",
    "taluks": [
      {"name":"Ballari","short_name": "BLLRI"},
      {"name":"Hagaribommanahalli","short_name": "HGBNL"},
      {"name":"Harpanahalli","short_name": "HRPNL"},
      {"name":"Hoovina Hadagali","short_name": "HVNHL"},
      {"name":"Hosapete","short_name": "HSPTE"},
      {"name":"Kudligi","short_name": "KDLGI"},
      {"name":"Sanduru","short_name": "SNDUR"},
      {"name":"Siraguppa","short_name": "SRGPA"}
    ]
  },
  {
    "name": "Belagavi",
"short_name": "BLGVI",
    "taluks": [
      {"name":"Athani","short_name": "ATHNI"},
      {"name":"Belagavi","short_name": "BLGVI"},
      {"name":"Bailhongal","short_name": "BLHNG"},
      {"name":"Chikkodi","short_name": "CHKDI"},
      {"name":"Gokak","short_name": "GOKAK"},
      {"name":"Khanapura","short_name": "KHNPR"},
      {"name":"Mudalgi","short_name": "MDLGI"},
      {"name":"Nippani","short_name": "NPANI"},
      {"name":"Raybag","short_name": "RAYBG"},
      {"name":"Savadatti","short_name": "SVDTI"},
      {"name":"Ramadurga","short_name": "RMDRG"},
      {"name":"Kagawada","short_name": "KGWDA"},
      {"name":"Hukkeri","short_name": "HUKRI"},
      {"name":"Kitturu","short_name": "KITRU"},
      {"name":"Yargatti","short_name": "YRGTI"}
    ]
  },
  {
    "name": "Bengaluru Urban",
"short_name": "BGLRU",
    "taluks": [
      {"name":"Bengaluru","short_name": "BGLRE"},
      {"name":"Kengeri","short_name": "KNGRI"},
      {"name":"Krishnaraja pura","short_name": "KRPRM"},
      {"name":"Yelahanka","short_name": "YLHNK"}
    ]
  },
  {
    "name": "Bengaluru Rural",
"short_name": "BGLRR",
    "taluks": [
      {"name":"Nelamangala","short_name": "NLMNG"},
      {"name":"Doddaballapura","short_name": "DBLPR"},
      {"name":"Devanahalli","short_name": "DVNHL"},
      {"name":"Hosakote","short_name": "HSKTE"}
    ]
  },
  {
    "name": "Bidar",
"short_name": "BIDAR",
    "taluks": [
      {"name":"Aurad","short_name": "AURAD"},
      {"name":"Basavakalyana","short_name": "BSKLN"},
      {"name":"Bhalki","short_name": "BHLKI"},
      {"name":"Bidar","short_name": "BIDAR"},
      {"name":"Chitgoppa","short_name": "CHTGP"},
      {"name":"Hulsoor","short_name": "HULSR"},
      {"name":"Humnabad","short_name": "HMNBD"},
      {"name":"Kamalnagar","short_name": "KMLNG"}
    ]
  },
  {
    "name": "Chamarajanagara",
"short_name": "CMRJG",
    "taluks": [
      {"name":"Chamarajanagara","short_name": "CMRJG"},
      {"name":"Gundlupete","short_name": "GDLPT"},
      {"name":"Kollegala","short_name": "KLGLA"},
      {"name":"Yelanduru","short_name": "YLNDR"},
      {"name":"Hanur","short_name": "HANUR"},
      {"name":"Rampura","short_name": "RMPRA"}
    ]
  },
  {
    "name": "Chikkaballapura",
"short_name": "CKBLR",
    "taluks": [
      {"name":"Chikkaballapura","short_name": "CKBLR"},
      {"name":"Bagepalli","short_name": "BGPLI"},
      {"name":"Chintamani","short_name": "CNTMN"},
      {"name":"Gauribidanur","short_name": "GRBDN"},
      {"name":"Gudibanda","short_name": "GDBND"},
      {"name":"Sidlaghatta","short_name": "SDLGT"},
      {"name":"Chelur","short_name": "CHELR"}
    ]
  },
  {
    "name": "Chikkmagaluru",
"short_name": "CKMLR",
    "taluks": [
      {"name":"Chikkamagaluru","short_name": "CKMLR"},
      {"name":"Kadur","short_name": "KADUR"},
      {"name":"Koppa","short_name": "KOPPA"},
      {"name":"Mudigere","short_name": "MDGRE"},
      {"name":"Narasimharajapura","short_name": "NRSPR"},
      {"name":"Sringeri","short_name": "SRNGR"},
      {"name":"Tarikere","short_name": "TRKER"},
      {"name":"Ajjampura","short_name": "AJMPR"},
      {"name":"Kalasa","short_name": "KALSA"}
    ]
  },
  {
    "name": "Chitradurga",
"short_name": "CTRDG",
    "taluks": [
      {"name":"Chitradurga","short_name": "CTRDG"},
      {"name":"Challakere","short_name": "CHLKR"},
      {"name":"Hiriyur","short_name": "HRYUR"},
      {"name":"Holalkere","short_name": "HLKRE"},
      {"name":"Hosadurga","short_name": "HSDRG"},
      {"name":"Molakalmuru","short_name": "MLKLM"}
    ]
  },
  {
    "name": "Dakshina Kannada",
"short_name": "DKKND",
    "taluks": [
      {"name":"Mangaluru","short_name": "MGLRU"},
      {"name":"Ullal","short_name": "ULLAL"},
      {"name":"Mulki","short_name": "MULKI"},
      {"name":"Moodbidri","short_name": "MDBDR"},
      {"name":"Bantwala","short_name": "BNTWL"},
      {"name":"Beltangadi","short_name": "BLTNG"},
      {"name":"Puttur","short_name": "PUTTR"},
      {"name":"Sulya","short_name": "SULYA"},
      {"name":"Kadaba","short_name": "KADBA"}
    ]
  },
  {
    "name": "Davanagere",
"short_name": "DVNGR",
    "taluks": [
      {"name":"Davanagere","short_name": "DVNGR"},
      {"name":"Harihara","short_name": "HRHRA"},
      {"name":"Honnali","short_name": "HNNLI"},
      {"name":"Nyamathi","short_name": "NMTHI"},
      {"name":"Jagalur","short_name": "JGLUR"}
    ]
  },
  {
    "name": "Dharawada",
"short_name": "DHRWD",
    "taluks": [
      {"name":"Kalghatgi","short_name": "KLGHT"},
      {"name":"Dharawada","short_name": "DHRWD"},
      {"name":"Hubballi (Rural)","short_name": "HUBLR"},
      {"name":"Hubballi (Urban)","short_name": "HUBLU"},
      {"name":"Kundgol","short_name": "KNDGL"},
      {"name":"Navalgund","short_name": "NVLGD"},
      {"name":"Alnavara","short_name": "ALNVR"},
      {"name":"Annigeri","short_name": "ANGRI"}
    ]
  },
  {
    "name": "Gadaga",
"short_name": "GADAG",
    "taluks": [
      {"name":"Gadaga","short_name": "GADAG"},
      {"name":"Nargund","short_name": "NRGND"},
      {"name":"Mundargi","short_name": "MNDRG"},
      {"name":"Ron","short_name": "RONAA"},
      {"name":"Shirahatti","short_name": "SHRHT"}
    ]
  },
  {
    "name": "Hassan",
"short_name": "HASAN",
    "taluks": [
      {"name":"Hassan","short_name": "HSSAN"},
      {"name":"Arasikere","short_name": "ARSKR"},
      {"name":"Channarayapattana","short_name": "CNRPT"},
      {"name":"Holenarsipura","short_name": "HLNPR"},
      {"name":"Sakleshpura","short_name": "SKLPR"},
      {"name":"Aluru","short_name": "ALURU"},
      {"name":"Arakalagudu","short_name": "AKLGD"},
      {"name":"Beluru","short_name": "BELUR"}
    ]
  },
  {
    "name": "Haveri",
"short_name": "HAVER",
    "taluks": [
      {"name":"Ranibennur","short_name": "RNBNR"},
      {"name":"Byadgi","short_name": "BYDGI"},
      {"name":"Hangal","short_name": "HNGAL"},
      {"name":"Haveri","short_name": "HVERI"},
      {"name":"Savanuru","short_name": "SVNUR"},
      {"name":"Hirekeruru","short_name": "HRKUR"},
      {"name":"Shiggavi","short_name": "SGGVI"},
      {"name":"Rattihalli","short_name": "RTHLI"}
    ]
  },
  {
    "name": "Kalaburagi",
"short_name": "KLBRG",
    "taluks": [
      {"name":"Kalaburagi","short_name": "KLBRG"},
      {"name":"Afzalpura","short_name": "AFZPR"},
      {"name":"Alanda","short_name": "ALNDA"},
      {"name":"Chincholi","short_name": "CHNCL"},
      {"name":"Chitapura","short_name": "CHTPR"},
      {"name":"Jevargi","short_name": "JVRGI"},
      {"name":"Sedam","short_name": "SEDAM"},
      {"name":"Shahabad","short_name": "SHBAD"}
    ]
  },
  {
    "name": "Kodagu",
"short_name": "KODGU",
    "taluks": [
      {"name":"Madikeri","short_name": "MDKRI"},
      {"name":"Somawarapete","short_name": "SMWPT"},
      {"name":"Virajapete","short_name": "VRJPT"}
    ]
  },
  {
    "name": "Kolara",
"short_name": "KOLAR",
    "taluks": [
      {"name":"Kolara","short_name": "KOLAR"},
      {"name":"Bangarapete","short_name": "BNGPT"},
      {"name":"Maluru","short_name": "MALUR"},
      {"name":"Mulabagilu","short_name": "MLBGL"},
      {"name":"Srinivasapura","short_name": "SRNPR"},
      {"name":"Kolar Gold Fields (Robertsonpete)","short_name": "KGFAA"}
    ]
  },
  {
    "name": "Koppala",
"short_name": "KOPLA",
    "taluks": [
      {"name":"Gangavathi","short_name": "GNGVT"},
      {"name":"Koppala","short_name": "KOPLA"},
      {"name":"Kushtagi","short_name": "KSHTG"},
      {"name":"Yalaburga","short_name": "YLBRG"},
      {"name": "Kanakagiri","short_name": "KNKGR"},
      {"name":"Karatagi","short_name": "KRTGI"},
      {"name":"Kukanoor","short_name": "KKNOR"}
    ]
  },
  {
    "name": "Mandya",
"short_name": "MNDYA",
    "taluks": [
      {"name":"Mandya","short_name": "MNDYA"},
      {"name":"Maddur","short_name": "MDDUR"},
      {"name":"Malavalli","short_name": "MLVLI"},
      {"name":"Srirangapattana","short_name": "SRGPT"},
      {"name":"Krishnarajpet","short_name": "KRJPT"},
      {"name":"Nagamangala","short_name": "NGMGL"},
      {"name":"Pandavapura","short_name": "PDVPR"}
    ]
  },
  {
    "name": "Mysuru",
"short_name": "MYSRU",
    "taluks": [
      {"name":"Mysuru","short_name": "MYSUR"},
      {"name":"Hunasuru","short_name": "HNSUR"},
      {"name":"Krishnarajanagara","short_name": "KRNJR"},
      {"name":"Nanjanagudu","short_name": "NJNGD"},
      {"name":"Heggadadevanakote","short_name": "HDKTE"},
      {"name":"Piriyapattana","short_name": "PRYPT"},
      {"name":"T.Narasipura","short_name": "TNRPR"},
      {"name":"Saragur","short_name": "SRGUR"},
      {"name":"Saligrama","short_name": "SLGRM"}
    ]
  },
  {
    "name": "Raichur",
"short_name": "RCHUR",
    "taluks": [
      {"name":"Raichur","short_name": "RCHUR"},
      {"name":"Manvi","short_name": "MANVI"},
      {"name":"Sindhnur","short_name": "SNDNR"},
      {"name":"Devadurga","short_name": "DVDRG"},
      {"name":"Lingsugur","short_name": "LNGSG"},
      {"name":"Sirawara","short_name": "SRWRA"},
      {"name": "Maski","short_name": "MASKI"}
    ]
  },
  {
    "name": "Ramanagara",
"short_name": "RMNGR",
    "taluks": [
      {"name":"Ramanagara","short_name": "RMNGR"},
      {"name":"Magadi","short_name": "MAGDI"},
      {"name":"Kanakapura","short_name": "KNKPR"},
      {"name":"Channapatna","short_name": "CHPTN"},
      {"name":"Harohalli","short_name": "HROHL"}
    ]
  },
  {
    "name": "Shivamogga",
"short_name": "SHVMG",
    "taluks": [
      {"name":"Shivamogga","short_name": "SHVMG"},
      {"name":"Bhadravathi","short_name": "BDRVT"},
      {"name":"Hosanagara","short_name": "HSNGR"},
      {"name":"Shikaripura","short_name": "SKRPR"},
      {"name":"Soraba","short_name": "SORAB"},
      {"name":"Tirthahalli","short_name": "TRTHL"},
      {"name":"Sagara","short_name": "SAGAR"}
    ]
  },
  {
    "name": "Tumakuru",
"short_name": "TMKUR",
    "taluks": [
      {"name":"Tumakuru","short_name": "TMKUR"},
      {"name":"Chikkanayakanahalli","short_name": "CKNHL"},
      {"name":"Kunigal","short_name": "KNGAL"},
      {"name":"Madhugiri","short_name": "MDHGR"},
      {"name":"Sira","short_name": "SIRAA"},
      {"name":"Tiptur","short_name": "TPTUR"},
      {"name":"Gubbi","short_name": "GUBBI"},
      {"name":"Koratagere","short_name": "KRTGR"},
      {"name":"Pavagada","short_name": "PVGDA"},
      {"name":"Turuvekere","short_name": "TUVKR"}
    ]
  },
  {
    "name": "Udupi",
"short_name": "UDUPI",
    "taluks": [
      {"name":"Udupi","short_name": "UDUPI"},
      {"name":"Kaup","short_name": "KAPUA"},
      {"name":"Brahmavara","short_name": "BRMVR"},
      {"name":"Karkala","short_name": "KRKLA"},
      {"name":"Kundapura","short_name": "KNDPR"},
      {"name":"Hebri","short_name": "HEBRI"},
      {"name":"Byndoor","short_name": "BYDOR"}
    ]
  },
  {
    "name": "Uttara Kannada",
"short_name": "UTKND",
    "taluks": [
      {"name":"Karawara","short_name": "KRWAR"},
      {"name":"Sirsi","short_name": "SIRSI"},
      {"name":"Joida","short_name": "JOIDA"},
      {"name":"Dandeli","short_name": "DNDLI"},
      {"name":"Bhatkal","short_name": "BHTKL"},
      {"name":"Kumta","short_name": "KUMTA"},
      {"name":"Ankola","short_name": "ANKOL"},
      {"name":"Haliyal","short_name": "HLIYL"},
      {"name":"Honnavar","short_name": "HNNVR"},
      {"name":"Mundgod","short_name": "MNDGD"},
      {"name":"Siddapura","short_name": "SIDPR"},
      {"name":"Yellapur","short_name": "YELPR"}
    ]
  },
  {
    "name": "Vijayapura",
"short_name": "VJPRA",
    "taluks": [
      {"name":"Vijayapura","short_name": "VIJPR"},
      {"name":"Indi","short_name": "INDII"},
      {"name":"Basavana Bagewadi","short_name": "BSVBD"},
      {"name":"Sindgi","short_name": "SINDGI"},
      {"name":"Muddebihal","short_name": "MDEBL"},
      {"name":"Talikote","short_name": "TALKT"},
      {"name":"Devara Hipparagi","short_name": "DVRHP"},
      {"name":"Chadchan","short_name": "CHDCN"},
      {"name":"Tikota","short_name": "TIKOTA"},
      {"name":"Babaleshwar","short_name": "BBLSH"},
      {"name":"Kolhar","short_name": "KOLHR"},
      {"name":"Nidagundi","short_name": "NIDGD"},
      {"name":"Almel","short_name": "ALMEL"}
    ]
  },
  {
    "name": "Yadagiri",
"short_name": "YDGRI",
    "taluks": [
      {"name":"Yadagiri","short_name": "YDGRI"},
      {"name":"Shahapura","short_name": "SHAPR"},
      {"name":"Surapura","short_name": "SURPR"},
      {"name":"Gurmitkal","short_name": "GURMTK"},
      {"name":"Vadagera","short_name": "VDGRA"},
      {"name":"Hunsagi","short_name": "HUNSG"}
    ]
  }
];




var myJSON = JSON.stringify(country_state_city);

$(function(){
  var html_code = '';
  var data = JSON.parse(myJSON);
  html_code += '<option value="">Select</option>';
  $.each(data, function(key, value){
    // console.log(value);

    html_code += '<option value="'+value.short_name+'">'+value.name+'</option>';
    // console.log(html_code)
   });
  $('#districts').html(html_code);
});
// var json = $.parseJSON(country_state_city); 



  
  
function select_taluq(districts_id){
var html_code = '';
  var data = JSON.parse(myJSON);
   
  $.each(data, function(key, value){
    // console.log(value);
    if(districts_id == value.short_name){
      console.log(value);
      $.each(value.taluks, function(key, value){
    // console.log(value); 
     html_code += '<option value="'+value.short_name+'">'+value.name+'</option>';
    // console.log(html_code)
   });
    }
    // html_code += '<option value="'+value.short_name+'">'+value.name+'</option>';
    // console.log(html_code)
   });
   $('#taluq').html(html_code);


}


// var no_rows = 0;

function addrow(){

row = "<tr id=tasklist><td>" + "<input type='text' class='sno"+no_rows+"'></input>" + "</td><td>" + "<input type='number' class='age"+no_rows+"'></input>" + "</td><td colspan='4'>" + "<div class='form-check'><input class='gender' type='radio' name='gender"+no_rows+"' value='Male'><label class='form-check-label'for='gender"+no_rows+"'>Male</label></div><div class='form-check '><input class='gender' type='radio' name='gender"+no_rows+"' value='Female'><label class='form-check-label' for='gender"+no_rows+"'>Female</label></div><div class='form-check '><input class='gender' type='radio' name='gender"+no_rows+"' value='Third Gender'><label class='form-check-label' for='gender"+no_rows+"'>Third Gender</label></div>" + "</td><td>" + "<div class='agecond form-check '><input class='agecond' type='radio' name='agecond"+no_rows+"' value='Yes'><label class='form-check-label' for='agecond"+no_rows+"'>Yes</label></div><div class='form-check '><input class='agecond' type='radio' name='agecond"+no_rows+"' value='No'><label class='form-check-label' for='agecond"+no_rows+"'>No</label></div>" + "</td><td>" + "<a href='/' class='btn btn-primary start_assesment_btn' >Start Assesment</a>" +"</td></tr>";
        $("table > tbody").append(row);
        
            ++no_rows;

}

$(".add-row").click(function () {
  var mainTable = $('#tablemain');
var tr = mainTable.find('tbody tr');
if(tr.length < 10){
        row = "<tr id=tasklist><td >" + "<input type='text' class='sno"+no_rows+"'></input>" + "</td><td>" + "<input type='number' class='age"+no_rows+"'></input>" + "</td><td colspan='4'>" + "<div class='form-check'><input class='gender' type='radio' name='gender"+no_rows+"' value='Male'><label class='form-check-label'for='gender"+no_rows+"'>Male</label></div><div class='form-check '><input class='gender' type='radio' name='gender"+no_rows+"' value='Female'><label class='form-check-label' for='gender"+no_rows+"'>Female</label></div><div class='form-check '><input class='gender' type='radio' name='gender"+no_rows+"' value='Third Gender'><label class='form-check-label' for='gender"+no_rows+"'>Third Gender</label></div>" + "</td><td>" + "<div class='agecond form-check '><input class='agecond' type='radio' name='agecond"+no_rows+"' value='Yes'><label class='form-check-label' for='agecond"+no_rows+"'>Yes</label></div><div class='form-check '><input class='agecond' type='radio' name='agecond"+no_rows+"' value='No'><label class='form-check-label' for='agecond"+no_rows+"'>No</label></div>" + "</td><td>" + "<a href='/' class='btn btn-primary start_assesment_btn' >Start Assesment</a>" +"</td></tr>";
        $("table > tbody").append(row);
        
            ++no_rows;

          }
          else{
            alert("Limit Only 10 Rows");
          }
    });

$(".save_household").click(function(){
    $(".start_assesment_btn").css('display', 'block');
  });

    $('.load').click(function () {
       loadValues();
    });
 $('.household').click(function () {
       famil_details();
       addrow();
    });
$(".household").css("display","block");
$(".family_data").css("display","none");

 $(document).on('change', '#districts', function(){
  var districts_id = $(this).val();
  select_taluq(districts_id);
  console.log(districts_id);
 });

  

$("#savehouseholdbutton").click(function(){
  // alert("jquery function");

  // console.log(latitude);

    var districts = document.getElementById('districts').value
    var taluq = document.getElementById('taluq').value
    var locale = document.getElementById('locale').value
    var village = document.getElementById('village').value

    if(districts == ''){
      alert("Select District");
      return false;
    }
    else if(village == ''){
      alert("Enter Village");
      return false;
    }
   else if(locale == ''){
      alert("Select Locale");
      return false;
    }
    else {

    // alert("Other");
    var ind_id_1 = document.getElementById('ind_id_1').value
    var ind_id_2 = document.getElementById('ind_id_2').value
    var ind_id_3 = document.getElementById('ind_id_3').value
    var ind_id_4 = document.getElementById('ind_id_4').value
    var ind_id_5 = document.getElementById('ind_id_5').value

    var ind_name_1 = document.getElementById('ind_name_1').value
    var ind_name_2 = document.getElementById('ind_name_2').value
    var ind_name_3 = document.getElementById('ind_name_3').value
    var ind_name_4 = document.getElementById('ind_name_4').value
    var ind_name_5 = document.getElementById('ind_name_5').value

    var ind_gender_1 = document.getElementById('ind_gender_1').value
    var ind_gender_2 = document.getElementById('ind_gender_2').value
    var ind_gender_3 = document.getElementById('ind_gender_3').value
    var ind_gender_4 = document.getElementById('ind_gender_4').value
    var ind_gender_5 = document.getElementById('ind_gender_5').value

    var options_element_1 = document.getElementById('agegoup_1').value
    var options_element_2 = document.getElementById('agegoup_2').value
    var options_element_3 = document.getElementById('agegoup_3').value
    var options_element_4 = document.getElementById('agegoup_4').value
    var options_element_5 = document.getElementById('agegoup_5').value
   
   
    if(no_rows==0){
     if(options_element_1 != '' && ind_name_1 != '' && ind_gender_1 != '') {
          if(options_element_1 == 'Yes'){
            document.getElementById('assessmentbutton1').style.display = 'block';
            members.push({"memberId":ind_id_1,"name":ind_name_1,"gender":ind_gender_1,"agein15to30":options_element_1,"memberInterviewStatus":"TobeStarted"});
          }
          else{
            document.getElementById('notassessmentbutton1').style.display = 'block';
            members.push({"memberId":ind_id_1,"name":ind_name_1,"gender":ind_gender_1,"agein15to30":options_element_1,"memberInterviewStatus":"TobeStarted"});
          }
          
        }
        else{
          alert("Fill All the Fields of Member 1");
          members = [];
          return false;
        }
        
    }
    
    if(no_rows==1){
        if(options_element_1 != '' && ind_name_1 != '' && ind_gender_1 != '') {
          if(options_element_1 == 'Yes'){
            document.getElementById('assessmentbutton1').style.display = 'block';
            members.push({"memberId":ind_id_1,"name":ind_name_1,"gender":ind_gender_1,"agein15to30":options_element_1,"memberInterviewStatus":"TobeStarted"});
          }
          else{
            document.getElementById('notassessmentbutton1').style.display = 'block';
            members.push({"memberId":ind_id_1,"name":ind_name_1,"gender":ind_gender_1,"agein15to30":options_element_1,"memberInterviewStatus":"TobeStarted"});
          }
        }
        else{
          alert("Fill All the Fields of Member 1");
          members = [];
          return false;
        }
        if(options_element_2 != '' && ind_name_2 != '' && ind_gender_2 != '') {
          if(options_element_2 == 'Yes'){
            document.getElementById('assessmentbutton2').style.display = 'block';
            members.push({"memberId":ind_id_2,"name":ind_name_2,"gender":ind_gender_2,"agein15to30":options_element_2,"memberInterviewStatus":"TobeStarted"});
          }
          else{
            document.getElementById('notassessmentbutton2').style.display = 'block';
            members.push({"memberId":ind_id_2,"name":ind_name_2,"gender":ind_gender_2,"agein15to30":options_element_2,"memberInterviewStatus":"TobeStarted"});
          }
        }
        else{
          alert("Fill All the Fields of Member 2");
          members = [];
          return false;
        }
    }
    
    if(no_rows==2){
         
      if(options_element_1 != '' && ind_name_1 != '' && ind_gender_1 != '') {
          if(options_element_1 == 'Yes'){
            document.getElementById('assessmentbutton1').style.display = 'block';
            members.push({"memberId":ind_id_1,"name":ind_name_1,"gender":ind_gender_1,"agein15to30":options_element_1,"memberInterviewStatus":"TobeStarted"});
          }
          else{
            document.getElementById('notassessmentbutton1').style.display = 'block';
            members.push({"memberId":ind_id_1,"name":ind_name_1,"gender":ind_gender_1,"agein15to30":options_element_1,"memberInterviewStatus":"TobeStarted"});
          }
        }
        else{
          alert("Fill All the Fields of Member 1");
          members = [];
          return false;
        }
        if(options_element_2 != '' && ind_name_2 != '' && ind_gender_2 != '') {
          if(options_element_2 == 'Yes'){
            document.getElementById('assessmentbutton2').style.display = 'block';
            members.push({"memberId":ind_id_2,"name":ind_name_2,"gender":ind_gender_2,"agein15to30":options_element_2,"memberInterviewStatus":"TobeStarted"});
          }
          else{
            document.getElementById('notassessmentbutton2').style.display = 'block';
            members.push({"memberId":ind_id_2,"name":ind_name_2,"gender":ind_gender_2,"agein15to30":options_element_2,"memberInterviewStatus":"TobeStarted"});
          }
        }
        else{
          alert("Fill All the Fields of Member 2");
          members = [];
          return false;
        }
        if(options_element_3 != '' && ind_name_3 != '' && ind_gender_3 != '') {
           if(options_element_3 == 'Yes'){
            document.getElementById('assessmentbutton3').style.display = 'block';
            members.push({"memberId":ind_id_3,"name":ind_name_3,"gender":ind_gender_3,"agein15to30":options_element_3,"memberInterviewStatus":"TobeStarted"});
          }
          else{
            document.getElementById('notassessmentbutton3').style.display = 'block';
            members.push({"memberId":ind_id_3,"name":ind_name_3,"gender":ind_gender_3,"agein15to30":options_element_3,"memberInterviewStatus":"TobeStarted"});
          }
        }
        else{
          alert("Fill All the Fields of Member 3");
          members = [];
          return false;
        }
    }
    
    if(no_rows==3){
        if(options_element_1 != '' && ind_name_1 != '' && ind_gender_1 != '') {
          if(options_element_1 == 'Yes'){
            document.getElementById('assessmentbutton1').style.display = 'block';
            members.push({"memberId":ind_id_1,"name":ind_name_1,"gender":ind_gender_1,"agein15to30":options_element_1,"memberInterviewStatus":"TobeStarted"});
          }
          else{
            document.getElementById('notassessmentbutton1').style.display = 'block';
            members.push({"memberId":ind_id_1,"name":ind_name_1,"gender":ind_gender_1,"agein15to30":options_element_1,"memberInterviewStatus":"TobeStarted"});
          }
        }
        else{
          alert("Fill All the Fields of Member 1");
          members = [];
          return false;
        }
        if(options_element_2 != '' && ind_name_2 != '' && ind_gender_2 != '') {
          if(options_element_2 == 'Yes'){
            document.getElementById('assessmentbutton2').style.display = 'block';
            members.push({"memberId":ind_id_2,"name":ind_name_2,"gender":ind_gender_2,"agein15to30":options_element_2,"memberInterviewStatus":"TobeStarted"});
          }
          else{
            document.getElementById('notassessmentbutton2').style.display = 'block';
            members.push({"memberId":ind_id_2,"name":ind_name_2,"gender":ind_gender_2,"agein15to30":options_element_2,"memberInterviewStatus":"TobeStarted"});
          }
        }
        else{
          alert("Fill All the Fields of Member 2");
          members = [];
          return false;
        }
        if(options_element_3 != '' && ind_name_3 != '' && ind_gender_3 != '') {
           if(options_element_3 == 'Yes'){
            document.getElementById('assessmentbutton3').style.display = 'block';
            members.push({"memberId":ind_id_3,"name":ind_name_3,"gender":ind_gender_3,"agein15to30":options_element_3,"memberInterviewStatus":"TobeStarted"});
          }
          else{
            document.getElementById('notassessmentbutton3').style.display = 'block';
            members.push({"memberId":ind_id_3,"name":ind_name_3,"gender":ind_gender_3,"agein15to30":options_element_3,"memberInterviewStatus":"TobeStarted"});
          }
        }
        else{
          alert("Fill All the Fields of Member 3");
          members = [];
          return false;
        }
        if(options_element_4 != '' && ind_name_4 != '' && ind_gender_4 != '') {
          if(options_element_4 == 'Yes'){
            document.getElementById('assessmentbutton4').style.display = 'block';
            members.push({"memberId":ind_id_4,"name":ind_name_4,"gender":ind_gender_4,"agein15to30":options_element_4,"memberInterviewStatus":"TobeStarted"});
          }
          else{
            document.getElementById('notassessmentbutton4').style.display = 'block';
            members.push({"memberId":ind_id_4,"name":ind_name_4,"gender":ind_gender_4,"agein15to30":options_element_4,"memberInterviewStatus":"TobeStarted"});
          }
        }
        else{
          alert("Fill All the Fields of Member 4");
          members = [];
          return false;
        }
    }
    
    if(no_rows==4){
         if(options_element_1 != '' && ind_name_1 != '' && ind_gender_1 != '') {
          if(options_element_1 == 'Yes'){
            document.getElementById('assessmentbutton1').style.display = 'block';
            members.push({"memberId":ind_id_1,"name":ind_name_1,"gender":ind_gender_1,"agein15to30":options_element_1,"memberInterviewStatus":"TobeStarted"});
          }
          else{
            document.getElementById('notassessmentbutton1').style.display = 'block';
            members.push({"memberId":ind_id_1,"name":ind_name_1,"gender":ind_gender_1,"agein15to30":options_element_1,"memberInterviewStatus":"TobeStarted"});
          }
        }
        else{
          alert("Fill All the Fields of Member 1");
          members = [];
          return false;
        }
        if(options_element_2 != '' && ind_name_2 != '' && ind_gender_2 != '') {
          if(options_element_2 == 'Yes'){
            document.getElementById('assessmentbutton2').style.display = 'block';
            members.push({"memberId":ind_id_2,"name":ind_name_2,"gender":ind_gender_2,"agein15to30":options_element_2,"memberInterviewStatus":"TobeStarted"});
          }
          else{
            document.getElementById('notassessmentbutton2').style.display = 'block';
            members.push({"memberId":ind_id_2,"name":ind_name_2,"gender":ind_gender_2,"agein15to30":options_element_2,"memberInterviewStatus":"TobeStarted"});
          }
        }
        else{
          alert("Fill All the Fields of Member 2");
          members = [];
          return false;
        }
        if(options_element_3 != '' && ind_name_3 != '' && ind_gender_3 != '') {
           if(options_element_3 == 'Yes'){
            document.getElementById('assessmentbutton3').style.display = 'block';
            members.push({"memberId":ind_id_3,"name":ind_name_3,"gender":ind_gender_3,"agein15to30":options_element_3,"memberInterviewStatus":"TobeStarted"});
          }
          else{
            document.getElementById('notassessmentbutton3').style.display = 'block';
            members.push({"memberId":ind_id_3,"name":ind_name_3,"gender":ind_gender_3,"agein15to30":options_element_3,"memberInterviewStatus":"TobeStarted"});
          }
        }
        else{
          alert("Fill All the Fields of Member 3");
          members = [];
          return false;
        }
        if(options_element_4 != '' && ind_name_4 != '' && ind_gender_4 != '') {
          if(options_element_4 == 'Yes'){
            document.getElementById('assessmentbutton4').style.display = 'block';
            members.push({"memberId":ind_id_4,"name":ind_name_4,"gender":ind_gender_4,"agein15to30":options_element_4,"memberInterviewStatus":"TobeStarted"});
          }
          else{
            document.getElementById('notassessmentbutton4').style.display = 'block';
            members.push({"memberId":ind_id_4,"name":ind_name_4,"gender":ind_gender_4,"agein15to30":options_element_4,"memberInterviewStatus":"TobeStarted"});
          }
        }
        else{
          alert("Fill All the Fields of Member 4");
          members = [];
          return false;
        }
        if(options_element_5 != '' && ind_name_5 != '' && ind_gender_5 != '') {
          if(options_element_5 == 'Yes'){
            document.getElementById('assessmentbutton5').style.display = 'block';
            members.push({"memberId":ind_id_5,"name":ind_name_5,"gender":ind_gender_5,"agein15to30":options_element_5,"memberInterviewStatus":"TobeStarted"});
          }
          else{
            document.getElementById('notassessmentbutton5').style.display = 'block';
            members.push({"memberId":ind_id_5,"name":ind_name_5,"gender":ind_gender_5,"agein15to30":options_element_5,"memberInterviewStatus":"TobeStarted"});

          }
        }
        else{
          alert("Fill All the Fields of Member 5");
          members = [];
          return false;
        }
    }
    
    document.getElementById('savehouseholdbutton').style.display = 'none'
    document.getElementById('familymemberbutton').style.display = 'none'
  }


latlongtimestamp();

setTimeout(function() {
               
           
var latlong = latitude+","+longitude;

var household = {
      "householdId": "",  
      "district": districts,
      "taluka": taluq,
      "villageOrward": village,
      "locale":locale,
      "created_timestamp":timestamp,
      "modified_timestamp":"timestamp",
      "createdLocation":latlong,
      "createdUserId":localStorage.getItem("userid"),
      "householdInterviewStatus":"TobeStarted", 
      "members":members

}
console.log(household);

$.ajax({
        type: "POST",
        url: '/householdSubmit',
        data: JSON.stringify(household),
        contentType: "application/json",
        success: function (data) {
          $("#spinner").fadeOut("slow");
          console.log(data);
          var json = $.parseJSON(data);
          if (json.msg == "Success"){

            $('#householdId').val(json.householdId);
            $("#displayhouseholdid").html("Household Id: HH_"+json.householdId);
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


$("#familymemberbutton").click(function(){
    no_rows=no_rows+1
    
      if(no_rows==1 && document.getElementById('member2').style.display == 'none'){
          document.getElementById('member2').style.display = 'block'
      }
    
     if(no_rows==2 && document.getElementById('member3').style.display == 'none'){
          document.getElementById('member3').style.display = 'block'
      }
    
     if(no_rows==3 && document.getElementById('member4').style.display == 'none'){
          document.getElementById('member4').style.display = 'block'
      }
    
     if(no_rows==4 && document.getElementById('member5').style.display == 'none'){
          document.getElementById('member5').style.display = 'block'
         document.getElementById('familymemberbutton').style.display = 'none'
      }
   
      
});

$(".inprogressassessmentbutton").click(function(){
memberId = "";
var id = $(this).attr('id');
// alert(id);
if(id == 'inprogressassessmentbutton1'){
  memberId = "1";
}
else if(id == 'inprogressassessmentbutton2'){
  memberId = "2";
}
else if(id == 'inprogressassessmentbutton3'){
  memberId = "3";
}
else if(id == 'inprogressassessmentbutton4'){
  memberId = "4";
}
else if(id == 'inprogressassessmentbutton5'){
  memberId = "5";
}
else{
  alert("memberId getting Error!")
}

householdId = $('#householdId').val();

latlongtimestamp();

setTimeout(function() {
               
           
var latlong = latitude+","+longitude;
var household = "HH_"+householdId;
var member = "IND_"+memberId

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
        url: '/update_assessmentSubmit',
        data: JSON.stringify(assessmentMetaData),
        contentType: "application/json",
        success: function (data) {
          $("#spinner").fadeOut("slow");
          console.log(data);
          var json = $.parseJSON(data);
          if (json.msg == "Success"){
            var url = "/ysAssessment?memberId=" + memberId + "&householdId=" + householdId;
            window.location.href = url;
            console.log("Success");
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

$(".assessmentbutton").click(function(){
memberId = "";
var id = $(this).attr('id');
// alert(id);
if(id == 'assessmentbutton1'){
  memberId = "1";
}
else if(id == 'assessmentbutton2'){
  memberId = "2";
}
else if(id == 'assessmentbutton3'){
  memberId = "3";
}
else if(id == 'assessmentbutton4'){
  memberId = "4";
}
else if(id == 'assessmentbutton5'){
  memberId = "5";
}
else{
  alert("memberId getting Error!")
}

householdId = $('#householdId').val();
// alert(householdId);

latlongtimestamp();

localStorage.setItem('no_rows',no_rows);
localStorage.setItem('householdId',householdId);

setTimeout(function() {
               
           
var latlong = latitude+","+longitude;
var household = "HH_"+householdId;
var member = "IND_"+memberId

var assessmentMetaData={
      "householdId":household,
      "memberId":member,
      "userid": localStorage.getItem("userid"),
      "startTime":timestamp, 
      "memberInterviewStatus":"TobeStarted",
      "createdLocation":latlong, 
      "completeLocation":"", 
      "completedTime":"",
     "updatedTime":""

}


// alert(no_rows);
console.log(assessmentMetaData);

$.ajax({
        type: "POST",
        url: '/assessmentSubmit',
        data: JSON.stringify(assessmentMetaData),
        contentType: "application/json",
        success: function (data) {
          $("#spinner").fadeOut("slow");
          console.log(data);
          var json = $.parseJSON(data);
          if (json.msg == "Success"){
            
            var url = "/ysAssessment?memberId=" + memberId + "&householdId=" + householdId;
            window.location.href = url;
            console.log("Success");
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



function loadValues(){

  var mainTable = $('#tablemain');
var tr = mainTable.find('tbody tr');
console.log(tr.length)
tr.each(function(){
tmpArr=[];
$(this).find('td').each(function(){

var values=$(this).find('input[type=text], input[type=number], select, input[type=radio]:checked').val();
tmpArr.push(values);

});
mainArr.push(tmpArr);
});
console.log(mainArr);



}

function famil_details(){

$(".family_data").css("display","block");
$(".household").css("display","none");



}
    

    
    
</script>
    

<style>
table, th, td {
  border: 0px;
}
table.center {
  margin-left: auto; 
  margin-right: auto;
}
</style>


</head>

<body class="login-page sidebar-collapse">
  
  <!-- <div class="page-header header-filter" style="background-image: url(''); background-size: cover; background-position: top center;"> -->
    <div class="container">

      <div id="ques_data" style="display: block;">
     
        <div class="row" style="margin-top: 75px;">
          <div class="col-md-6 ml-auto mr-auto">
            <div class="card card-login">
              <div class="card-header card-header-rose text-center">
                <h4 class="card-title" style="padding-left: 3%; padding-right: 3%;">WHERE IS THE HOME LOCATED?</h4>
                <h4 class="card-title" id="displayhouseholdid" style="padding-left: 3%; padding-right: 3%;"></h4>
               
              </div>
              <div class="card-body" style="padding-top: 15px; padding-bottom: 15px;">
                  <table class="center">
                      <tr>
                          <th width="50%">
                  <div class="col-lg-2 col-sm-6">
      <div class="form-group ">
      <input name="householdId" type="hidden" class="form-control" id="householdId">
    <label for="districts" class="control-label">District</label>
    <select name="districts" id="districts" class="form-control input-lg">
     <option value="">Select</option>
   </select>
  </div>
    
    </div>
                              </th>
                      <th width="50%">
                  
                  <div class="col-lg-2 col-sm-6">
      <div class="form-group">
    <label for="taluq">Taluka</label>
    <select name="taluq" id="taluq" class="form-control input-lg">
    <option value="">Select</option>
   </select> 
  </div>
                  
              
            </div>
                          </th>
                          </tr>
                      
                      <tr>
                          <th width="50%">
                  <div class="col-lg-3 col-sm-6">
      <div class="form-group ">
    <label for="village">Village / Ward</label>
    <input name="village" type="text" class="form-control " id="village">
  </div>
 

    </div>
                              </th>
                      <th width="50%">
                  
                  <div class="col-lg-2 col-sm-6">
      <div class="form-group">
    <label for="locale">Locale</label>
    <select name="locale" id="locale" class="form-control">
       <option value="">Select</option>
      <option value="Urban">Urban</option>
      <option value="Rural">Rural</option>
      
    </select>
  </div>

    </div>
                          </th>
                          </tr>
                      
                      
                  </table>
          </div>
        </div>
              
              <br>
              
              <div class="card card-login"> 
                  
              <div class="card-header card-header-rose text-center">
                <h4 class="card-title" style="padding-left: 3%; padding-right: 3%;">FAMILY INFORMATION</h4>
               
              </div>
              </div>
              
             
              
              
              <div class="card card-login" id="member1">
              <!--<div class="card-header card-header-rose text-center">
                <h4 class="card-title" style="padding-left: 3%; padding-right: 3%;">FAMILY MEMBER</h4>
               
              </div>-->
             <center> <h4 class="title"><span id="member">MEMBER 1</span></h4></center>
              <div class="card-body" style="padding-top: 15px; padding-bottom: 15px;">
                  <table class="center">
                      <tr>
                          <th width="50%">
                  <div class="col-lg-2 col-sm-6">
      <div class="form-group">
    <label for="ind_name_1">Name</label>
    <input name="ind_name_1" type="text" class="form-control" id="ind_name_1">
    <input name="ind_id_1" type="hidden" class="form-control" id="ind_id_1" value="IND_1">
  </div>
    
    </div>
                              </th>
                      <th width="50%">
                  
                  <div class="col-lg-2 col-sm-6">
      <div class="form-group">
    <label for="ind_gender_1">Gender</label>
    <select name="ind_gender_1" id="ind_gender_1" class="form-control input-lg">
    <option value="">Select</option>
      <option value="Male">Male</option>
      <option value="Female">Female</option>
        <option value="Third_Gender">Third Gender</option>
   </select> 
  </div>
                  
              
            </div>
                          </th>
                          </tr>
                      
                      <tr>
                          
                      <th width="50%">
                  
                  <div class="col-lg-2 col-sm-6">
      <div class="form-group">
    <label for="agegoup_1">Age between 15 and 30?</label>
    <select name="agegoup_1" id="agegoup_1"  class="form-control agebetween">
       <option value="">Select</option>
      <option value="Yes">Yes</option>
      <option value="No">No</option>
      
    </select>
  </div>

    </div>
                          </th>
                          
                          <th width="50%">
                  
                  <div class="col-lg-2 col-sm-6">
      <div class="form-group">
        <a>
    <button class="btn btn-rose btn-raised assessmentbutton" style="" id="assessmentbutton1" >START INTERVEW</button>
    <button class="btn btn-info btn-raised notassessmentbutton" style="" id="notassessmentbutton1" >NOT APPLICABLE</button>
     <button class="btn btn-rose btn-raised inprogressassessmentbutton" style="" id="inprogressassessmentbutton1" >CONTINUE INTERVIEW </button>
    <button class="btn btn-success btn-raised completeassessmentbutton" style="" id="completeassessmentbutton1" >COMPLETE</button>
          </a>
  </div>

    </div>
                          </th>
                  
                          </tr>
                      
                      
                      
                      
                  </table>
                  <br>        
                  
          </div>
        </div>
              
              <br>
              <!--zHere-->
        <div class="card card-login" id="member2">
              <!--<div class="card-header card-header-rose text-center">
                <h4 class="card-title" style="padding-left: 3%; padding-right: 3%;">FAMILY MEMBER</h4>
               
              </div>-->
            <br> 
            <center> <h4 class="title"><span id="member">MEMBER 2</span></h4></center>
              <div class="card-body" style="padding-top: 15px; padding-bottom: 15px;">
                  <table class="center">
                      <tr>
                          <th width="50%">
                  <div class="col-lg-2 col-sm-6">
      <div class="form-group">
    <label for="ind_name_2">Name</label>
    <input name="ind_name_2" type="text" class="form-control" id="ind_name_2">
    <input name="ind_id_2" type="hidden" class="form-control" id="ind_id_2" value="IND_2">
  </div>
    
    </div>
                              </th>
                      <th width="50%">
                  
                  <div class="col-lg-2 col-sm-6">
      <div class="form-group">
    <label for="ind_gender_2">Gender</label>
    <select name="ind_gender_2" id="ind_gender_2" class="form-control input-lg">
    <<option value="">Select</option>
      <option value="Male">Male</option>
      <option value="Female">Female</option>
        <option value="Third_Gender">Third Gender</option>
   </select> 
  </div>
                  
              
            </div>
                          </th>
                          </tr>
                      
                      <tr>
                          
                      <th width="50%">
                  
                  <div class="col-lg-2 col-sm-6">
      <div class="form-group">
    <label for="agegoup_2">Age between 15 and 30?</label>
    <select name="agegoup_2" id="agegoup_2"  class="form-control agebetween">
        <option value="">Select</option>
      <option value="Yes">Yes</option>
      <option value="No">No</option>
      
    </select>
  </div>

    </div>
                          </th>
                          
                          <th width="50%">
                  
                  <div class="col-lg-2 col-sm-6">
      <div class="form-group">
           <a>
    <button class="btn btn-rose btn-raised assessmentbutton" style="" id="assessmentbutton2" >START INTERVEW</button>
    <button class="btn btn-info btn-raised notassessmentbutton" style="" id="notassessmentbutton2" >NOT APPLICABLE</button>
    <button class="btn btn-rose btn-raised inprogressassessmentbutton" style="" id="inprogressassessmentbutton2" >CONTINUE INTERVIEW </button>
    <button class="btn btn-success btn-raised completeassessmentbutton" style="" id="completeassessmentbutton2" >COMPLETE</button>
          </a>
  </div>

    </div>
                          </th>
                  
                          </tr>
                      
                      
                      
                      
                  </table>
                  <br>        
                  
          </div>
        </div>
              
        <!--Member 3-->
          <div class="card card-login" id="member3">
              <!--<div class="card-header card-header-rose text-center">
                <h4 class="card-title" style="padding-left: 3%; padding-right: 3%;">FAMILY MEMBER</h4>
               
              </div>-->
            <br> 
            <center> <h4 class="title"><span id="member">MEMBER 3</span></h4></center>
              <div class="card-body" style="padding-top: 15px; padding-bottom: 15px;">
                  <table class="center">
                      <tr>
                          <th width="50%">
                  <div class="col-lg-2 col-sm-6">
      <div class="form-group">
    <label for="ind_name_3">Name</label>
    <input name="ind_name_3" type="text" class="form-control" id="ind_name_3">
    <input name="ind_id_3" type="hidden" class="form-control" id="ind_id_3" value="IND_3">
  </div>
    
    </div>
                              </th>
                      <th width="50%">
                  
                  <div class="col-lg-2 col-sm-6">
      <div class="form-group">
    <label for="ind_gender_3">Gender</label>
    <select name="ind_gender_3" id="ind_gender_3" class="form-control input-lg">
    <option value="">Select</option>
      <option value="Male">Male</option>
      <option value="Female">Female</option>
        <option value="Third_Gender">Third Gender</option>
   </select> 
  </div>
                  
              
            </div>
                          </th>
                          </tr>
                      
                      <tr>
                          
                      <th width="50%">
                  
                  <div class="col-lg-2 col-sm-6">
      <div class="form-group">
    <label for="agegoup_3">Age between 15 and 30?</label>
    <select name="agegoup_3" id="agegoup_3"  class="form-control agebetween">
        <option value="">Select</option>
      <option value="Yes">Yes</option>
      <option value="No">No</option>
      
    </select>
  </div>

    </div>
                          </th>
                          
                          <th width="50%">
                  
                  <div class="col-lg-2 col-sm-6">
      <div class="form-group">
          <a>
    <button class="btn btn-rose btn-raised assessmentbutton" style="" id="assessmentbutton3" >START INTERVEW</button>
    <button class="btn btn-info btn-raised notassessmentbutton" style="" id="notassessmentbutton3" >NOT APPLICABLE</button>
    <button class="btn btn-rose btn-raised inprogressassessmentbutton" style="" id="inprogressassessmentbutton3" >CONTINUE INTERVIEW </button>
    <button class="btn btn-success btn-raised completeassessmentbutton" style="" id="completeassessmentbutton3" >COMPLETE</button>
          </a>
  </div>

    </div>
                          </th>
                  
                          </tr>
                      
                      
                      
                      
                  </table>
                  <br>        
                  
          </div>
        </div>    
              <!-- Member 4 -->
              
              <div class="card card-login" id="member4">
              <!--<div class="card-header card-header-rose text-center">
                <h4 class="card-title" style="padding-left: 3%; padding-right: 3%;">FAMILY MEMBER</h4>
               
              </div>-->
            <br> 
            <center> <h4 class="title"><span id="member">MEMBER 4</span></h4></center>
              <div class="card-body" style="padding-top: 15px; padding-bottom: 15px;">
                  <table class="center">
                      <tr>
                          <th width="50%">
                  <div class="col-lg-2 col-sm-6">
      <div class="form-group">
    <label for="ind_name_4">Name</label>
    <input name="ind_name_4" type="text" class="form-control" id="ind_name_4">
    <input name="ind_id_4" type="hidden" class="form-control" id="ind_id_4" value="IND_4">
  </div>
    
    </div>
                              </th>
                      <th width="50%">
                  
                  <div class="col-lg-2 col-sm-6">
      <div class="form-group">
    <label for="ind_gender_4">Gender</label>
    <select name="ind_gender_4" id="ind_gender_4" class="form-control input-lg">
   <option value="">Select</option>
      <option value="Male">Male</option>
      <option value="Female">Female</option>
        <option value="Third_Gender">Third Gender</option>
   </select> 
  </div>
                  
              
            </div>
                          </th>
                          </tr>
                      
                      <tr>
                          
                      <th width="50%">
                  
                  <div class="col-lg-2 col-sm-6">
      <div class="form-group">
    <label for="agegoup_4">Age between 15 and 30?</label>
    <select name="agegoup_4" id="agegoup_4"  class="form-control agebetween">
       <option value="">Select</option>
      <option value="Yes">Yes</option>
      <option value="No">No</option>
      
    </select>
  </div>

    </div>
                          </th>
                          
                          <th width="50%">
                  
                  <div class="col-lg-2 col-sm-6">
      <div class="form-group">
          <a>
    <button class="btn btn-rose btn-raised assessmentbutton" style="" id="assessmentbutton4" >START INTERVEW</button>
    <button class="btn btn-info btn-raised notassessmentbutton" style="" id="notassessmentbutton4" >NOT APPLICABLE</button>
    <button class="btn btn-rose btn-raised inprogressassessmentbutton" style="" id="inprogressassessmentbutton4" >CONTINUE INTERVIEW </button>
    <button class="btn btn-success btn-raised completeassessmentbutton" style="" id="completeassessmentbutton4" >COMPLETE</button>
          </a>
  </div>

    </div>
                          </th>
                  
                          </tr>
                      
                      
                      
                      
                  </table>
                  <br>        
                  
          </div>
        </div> 
              
              <!--Member 5 -->
        
    <div class="card card-login" id="member5">
              <!--<div class="card-header card-header-rose text-center">
                <h4 class="card-title" style="padding-left: 3%; padding-right: 3%;">FAMILY MEMBER</h4>
               
              </div>-->
            <br> 
            <center> <h4 class="title"><span id="member">MEMBER 5</span></h4></center>
              <div class="card-body" style="padding-top: 15px; padding-bottom: 15px;">
                  <table class="center">
                      <tr>
                          <th width="50%">
                  <div class="col-lg-2 col-sm-6">
      <div class="form-group">
    <label for="ind_name_5">Name</label>
    <input name="ind_name_5" type="text" class="form-control" id="ind_name_5">
    <input name="ind_id_5" type="hidden" class="form-control" id="ind_id_5" value="IND_5">
  </div>
    
    </div>
                              </th>
                      <th width="50%">
                  
                  <div class="col-lg-2 col-sm-6">
      <div class="form-group">
    <label for="ind_gender_5">Gender</label>
    <select name="ind_gender_5" id="ind_gender_5" class="form-control input-lg">
    <option value="">Select</option>
      <option value="Male">Male</option>
      <option value="Female">Female</option>
        <option value="Third_Gender">Third Gender</option>
   </select> 
  </div>
                  
              
            </div>
                          </th>
                          </tr>
                      
                      <tr>
                          
                      <th width="50%">
                  
                  <div class="col-lg-2 col-sm-6">
      <div class="form-group">
    <label for="agegoup_5">Age between 15 and 30?</label>
    <select name="agegoup_5" id="agegoup_5"  class="form-control agebetween">
       <option value="">Select</option>
      <option value="Yes">Yes</option>
      <option value="No">No</option>
      
    </select>
  </div>

    </div>
                          </th>
                          
                          <th width="50%">
                  
                  <div class="col-lg-2 col-sm-6">
      <div class="form-group">
          <a>
    <button class="btn btn-rose btn-raised assessmentbutton" style="" id="assessmentbutton5" >START INTERVIEW</button>
    <button class="btn btn-info btn-raised notassessmentbutton" style="" id="notassessmentbutton5" >NOT APPLICABLE</button>
    <button class="btn btn-rose btn-raised inprogressassessmentbutton" style="" id="inprogressassessmentbutton5" >CONTINUE INTERVIEW </button>
    <button class="btn btn-success btn-raised completeassessmentbutton" style="" id="completeassessmentbutton5" >COMPLETE</button>
          </a>
  </div>

    </div>
                          </th>
                  
                          </tr>
                      
                      
                      
                      
                  </table>
                  <br>        
                  
          </div>
        </div> 
              
        <!-- Member 6 -->
              
      

      <div class="row" style="margin-top: 15px; margin-bottom: 50px;">
        <div class="col-md-6 ml-auto mr-auto text-center">
           <!--<a href="/home">-->
            <button id="familymemberbutton" class="btn btn-rose btn-raised" style="" onclick="addFamilyMember()">ADD ANOTHER FAMILY MEMBER</button>
            <center><img id="done_spinner" src="img/spinner.gif" style="width: 75px; display: none;"></center>
          <!--</a>-->
        
          <!--<br>
          <a href="/logout">Logout</a> -->
        </div>
      </div>
              
    
              <div class="row" style="margin-top: 15px; margin-bottom: 50px;">
        <div class="col-md-6 ml-auto mr-auto text-center">
           <!--<a href="/home">-->
            <button id="savehouseholdbutton" class="btn btn-rose btn-raised" style="" >SAVE HOUSEHOLD</button>
            <center><img id="done_spinner" src="img/spinner.gif" style="width: 75px; display: none;"></center>
          <!--</a>-->
          <br>
          <a href="/ysHome">Go To Home</a>
          <br>
          <br>
          <a id="logout">Logout</a>
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
