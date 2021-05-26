<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="">
  <link rel="icon" type="image/png" href="">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    YUVASPANDANA SURVEYOR STATUS
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


    
    
</script>
    

<style>
table, td, th {
  border: 1px solid pink;
}

table {
  width: 100%;
  border-collapse: collapse;
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
                <h4 class="card-title" style="padding-left: 3%; padding-right: 3%;">INTERVIEWS</h4>
               
              </div>
              <div class="card-body" style="padding-top: 15px; padding-bottom: 15px;">
                  <table>
                    <tr>
                        <th colspan="3">
                            <center><p style="padding-left: 15px; font-size: 0.8em;">HOUSEHOLDS</p></center>
                        </th>
                        <th colspan="3">
                            <center><p style="padding-left: 15px; font-size: 0.8em;">INDIVIDUALS</p></center>
                        </th>
                        
                    </tr>
                    <tr>
                    <th>
                            <center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">TO BE STARTED</span></p></center>
                        </th>
                        <th>
                            <center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">IN PROGRESS</span></p></center>
                        </th>
                        <th>
                            <center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">COMPLETED</span></p></center>
                        </th> 
                        
                        <th>
                            <center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">TO BE STARTED</span></p></center>
                        </th>
                        <th>
                            <center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">IN PROGRESS</span></p></center>
                        </th>
                        <th>
                            <center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">COMPLETED</span></p></center>
                        </th> 
                        
                    </tr>
                    <tr>
                        
                       <td>
                            <center><p style="font-size: 0.8em;" id="households_tobestarted"><span id="macro_score" style=" font-size: 0.8em;">12</span></p></center>
                         </td>
                        <td>
                            <center><p style="font-size: 0.8em;" id="households_inprogress"><span id="macro_score" style=" font-size: 0.8em;">12</span></p></center>
                        </td>
                        <td>
                            <center><p style="font-size: 0.8em;" id="households_completed"><span id="macro_score" style=" font-size: 0.8em;">12</span></p></center>
                        </td>
                        
                         <td>
                            <center><p style="font-size: 0.8em;" id="members_tobestarted"><span id="macro_score" style=" font-size: 0.8em;">12</span></p></center>
                         </td>
                        <td>
                            <center><p style="font-size: 0.8em;" id="members_inprogress"><span id="macro_score" style=" font-size: 0.8em;">12</span></p></center>
                        </td>
                        <td>
                            <center><p style="font-size: 0.8em;" id="members_completed"><span id="macro_score" style=" font-size: 0.8em;">12</span></p></center>
                        </td>
                        
                    </tr>
                    
                 
                 
                 
                 
                </table>
          </div>
        </div>
              
              <br>
              
              <div class="card card-login"> 
                  
              <div class="card-header card-header-rose text-center">
                <h4 class="card-title" style="padding-left: 3%; padding-right: 3%;">SURVEYOR SUMMARY</h4>
               
              </div>
              </div>
              
             
              
              
              <div class="card card-login" id="member1">
              <!--<div class="card-header card-header-rose text-center">
                <h4 class="card-title" style="padding-left: 3%; padding-right: 3%;">FAMILY MEMBER</h4>
               
              </div>-->
             
              <div class="card-body" style="padding-top: 15px; padding-bottom: 15px;">
                  <table >
                    <thead>
                    <tr>
                        <th>
                            <center><p style=" font-size: 0.8em;">ID</p></center>
                        </th>
                        <th colspan="2">
                            <center><p style=" font-size: 0.8em;">LAST LOGIN</p></center>
                        </th>
                         <th colspan="3">
                            <center><p style="font-size: 0.8em;">INTERVIEWS</p></center>
                        </th>
                        <th>
                            
                        </th>
                        
                    </tr>
                    <tr>
                        
                        <th>
                            
                        </th>
                         <th>
                            <center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">TIME</span></p></center>
                        </th>
                         <th>
                            <center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">LOCATION</span></p></center>
                        </th>
                         <th>
                            <center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">TO BE STARTED</span></p></center>
                        </th>
                        <th>
                            <center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">IN PROGRESS</span></p></center>
                        </th>
                        <th>
                            <center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">COMPLETED</span></p></center>
                        </th>
                    </tr>
                      </thead>
                      <tbody id="userdataInfo">

                      </tbody>
                    <!--  <tr>
                        
                        <td>
                            <center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">USER_123</span></p></center>
                        </td>
                         <td>
                            <center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">13/05/2021 13:43</span></p></center>
                         </td>
                         <td>
                            <center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">link</span></p></center>
                        </td>
                         <td>
                            <center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">12</span></p></center>
                         </td>
                        <td>
                            <center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">12</span></p></center>
                        </td>
                        <td>
                            <center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">12</span></p></center>
                        </td>
                    </tr>
                      
                       <tr>
                        
                        <td>
                            <center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">USER_111</span></p></center>
                        </td>
                         <td>
                            <center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">13/05/2021 13:43</span></p></center>
                         </td>
                         <td>
                            <center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">link</span></p></center>
                        </td>
                         <td>
                            <center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">12</span></p></center>
                         </td>
                        <td>
                            <center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">12</span></p></center>
                        </td>
                        <td>
                            <center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">12</span></p></center>
                        </td>
                    </tr>
                       -->
                    
                 
                 
                 
                 
                </table>
                  <br>        
                  
          </div>
        </div>
              
              <br>
             <div class="row" style="margin-top: 15px; margin-bottom: 50px;">
        <div class="col-md-6 ml-auto mr-auto text-center">
           <!--<a href="/home">-->
            
          <!--</a>-->
          <button class="btn btn-rose btn-raised">
                  DOWNLOAD ALL INTERVIEWS
                </button>
          <br>
        <br>
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

  <script>
$(document).ready(function(){
  var user_name = localStorage.getItem("user_name");
  
  if(!user_name){
    window.location.href = "/login";
  }

 var requestData = { 
      "userid": localStorage.getItem("userid")             
      }
      $.ajax({
        type: "POST",
        url: '/allusersdataInfo',
        data: JSON.stringify(requestData),
        contentType: "application/json",
        success: function (data) {
          $("#spinner").fadeOut("slow");
          console.log(data);
          var json = $.parseJSON(data);
          if (json.msg == "Success"){
            $("#households_tobestarted").html(json.data.households_tobestarted);
             $("#households_inprogress").html(json.data.households_inprogress);
             $("#households_completed").html(json.data.households_completed);
             $("#members_tobestarted").html(json.data.members_tobestarted);
             $("#members_inprogress").html(json.data.members_inprogress);
             $("#members_completed").html(json.data.members_completed);

           
            console.log("Success");
          }
       },
       error: function(data){
        $("#spinner").fadeOut("slow");
        alert("Technical Error!");
       }

     });

$.ajax({
        type: "POST",
        url: '/userdataInfo',
        data: JSON.stringify(requestData),
        contentType: "application/json",
        success: function (data) {
          $("#spinner").fadeOut("slow");
          console.log(data);
          var json = $.parseJSON(data);
          if (json.msg == "Success"){
          var htmldata = '';
          var formatedDate = '';
          var location = '';
        $.each(json.data , function(index, item) { 
          
         
         if(item.lastLoginTimestamp != ''){
          var date = new Date(parseInt(item.lastLoginTimestamp));

          month=date.getMonth();
          console.log(month);
          month=month+1; //javascript date goes from 0 to 11
          if (month<10) month="0"+month; //adding the prefix

          year=date.getFullYear();
          day=date.getDate();
          hour=date.getHours();
          minutes=date.getMinutes();
          seconds=date.getSeconds();
          formatedDate=day+"/"+month+"/"+year+" "+hour+":"+minutes;

          console.log(formatedDate);
         }
         else{
                formatedDate = 'NA'
         }
          if(item.lastLoginLocation != ''){
            location = '<button class="btn btn-sm btn-info btn-raised map-btn" style="" >View</button><input type="hidden" name="mapview" value="'+item.lastLoginLocation+'"';

          }
          else{
              location = 'NA';
          }
          
          var total_tobestarted = parseInt(item.totalNumberOfMembersCreated) - parseInt(item.numberOfMembersINProgress) - parseInt(item.numberOfMembersCompleted);
          var total_inprogress = parseInt(item.numberOfMembersINProgress);
          var total_completed = parseInt(item.numberOfMembersCompleted);
          
          htmldata += '<tr><td><center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">'+item.username+'</span></p></center></td><td><center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">'+formatedDate+'</span></p></center></td><td><center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">'+location+'</span></p></center></td><td><center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">'+total_tobestarted+'</span></p></center></td><td><center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">'+total_inprogress+'</span></p></center></td><td><center><p style="font-size: 0.8em;"><span id="macro_score" style=" font-size: 0.8em;">'+total_completed+'</span></p></center></td></tr>';


        });

        $("#userdataInfo").html(htmldata);   


            console.log("Success");
          }
       },
       error: function(data){
        $("#spinner").fadeOut("slow");
        alert("Technical Error!");
       }

     });

    $(document).on('click', '.map-btn', function(){
                var latlong = $(this).closest("tr").find("input[name='mapview']").val();
                
                // alert(memberId[1]  +" "+ householdId[1]);
                var url = "https://www.google.com/maps/@" + latlong + "," + "20z";
                console.log(url);
                window.open(url, '_blank');
              

        });

    $("#logout").click(function(){
    localStorage.clear();
    location.reload();

  });



});

function format_date(date) {
  month=date.getMonth();
  month=month+1; //javascript date goes from 0 to 11
  if (month<10) month="0"+month; //adding the prefix

  year=date.getFullYear();
  day=date.getDate();
  hour=date.getHours();
  minutes=date.getMinutes();
  seconds=date.getSeconds();

  return day+"/"+month+"/"+year+" "+hour+":"+minutes+":"+seconds;

}


  </script>
</body>

</html>