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

                    

  <script type="text/javascript">    
    $(document).ready(function(){
      var sPageURL = window.location.pathname;
     
      myArr = sPageURL.split("/");
      
      hhmem=myArr[2]
      hhmmArr=hhmem.split('%5E')
      
    
      memberId = hhmmArr[1];
      householdId = hhmmArr[0];
      var member = memberId;
      var household = householdId;
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
        
    json_data = {"data":[{"qid":1,"qtype":"text","ph":"Enter Name","ques":{"english":"What is your Name?","kannada":"ನಿಮ್ಮ ಹೆಸರೇನು  ?"},"ans":[],"section":"Socio-demographic information","next_qid":1.1},{"qid":1.1,"qtype":"num","range":"9999999999","ph":"Contact Number","ques":{"english":"Contact Number","kannada":"ಸಂಪರ್ಕಿಸುವ ಸಂಖ್ಯೆ "},"ans":[],"section":"Socio-demographic information","next_qid":2.1},{"qid":2.1,"qtype":"radio","ques":{"english":"Do you know your Date of Birth?","kannada":"ನಿಮ್ಮ ಜನ್ಮ ದಿನಾಂಕ ನಿಮಗೆ ತಿಳಿದಿದೆಯೇ?"},"ans":[{"aid":1,"value":"Yes","value_id":1,"next_qid":2.2},{"aid":2,"value":"No","value_id":0,"next_qid":2.3}],"section":"Socio-demographic information"},{"qid":2.2,"qtype":"text","ph":"dd/mm/yyyy","ques":{"english":"What is your Date of Birth?","kannada":"ನಿಮ್ಮ ಹುಟ್ಟಿದ ದಿನಾಂಕ ಯಾವುದು?"},"ans":[],"section":"Socio-demographic information","next_qid":3},{"qid":2.3,"qtype":"num","range":"125","ph":"Enter Age in years","ques":{"english":"What is your age in completed years","kannada":"ಪೂರ್ಣಗೊಂಡ ವರ್ಷಗಳಲ್ಲಿ ನಿಮ್ಮ ವಯಸ್ಸು ಎಷ್ಟು?"},"ans":[],"section":"Socio-demographic information","next_qid":3},{"qid":3,"qtype":"radio","ques":{"english":"What is your Sex?","kannada":" ಲಿಂಗ ?"},"ans":[{"aid":1,"value":"Male","value_id":1,"next_qid":4},{"aid":2,"value":"Female","value_id":2,"next_qid":4},{"aid":3,"value":"Third Gender","value_id":3,"next_qid":4}],"section":"Socio-demographic information"},{"qid":4,"qtype":"radio","ques":{"english":"What is your highest Educational attainment?","kannada":"ಎಲ್ಲಿಯವರೆಗೆ ವಿದ್ಯಾಭ್ಯಾಸ ಮುಗಿಸಿದ್ದೀರಾ?"},"ans":[{"aid":1,"value":"Not Literate","value_id":1,"next_qid":5},{"aid":2,"value":"Lower Primary(class 1-5)","value_id":2,"next_qid":5},{"aid":3,"value":"Upper Primary(class 6-7)","value_id":3,"next_qid":5},{"aid":4,"value":"High School(class 8-10)","value_id":4,"next_qid":5},{"aid":5,"value":"High Secondary/PUC(class 11-12)","value_id":5,"next_qid":5},{"aid":6,"value":"Degree/Diploma/ITI","value_id":6,"next_qid":5},{"aid":7,"value":"Post Graduate Degree and above","value_id":7,"next_qid":5}],"section":"Socio-demographic information"},{"qid":5,"qtype":"radio","ques":{"english":"What is your Marital Status?","kannada":"ನಿಮ್ಮ ವೈವಾಹಿಕ ಮಾಹಿತಿ?"},"ans":[{"aid":1,"value":"Currently Married","value_id":1,"next_qid":6},{"aid":2,"value":"Never Married","value_id":2,"next_qid":7},{"aid":3,"value":"Widowed","value_id":3,"next_qid":6},{"aid":4,"value":"Divorced","value_id":4,"next_qid":6},{"aid":5,"value":"Separated","value_id":5,"next_qid":6},{"aid":6,"value":"Deserted","value_id":6,"next_qid":6}],"section":"Socio-demographic information"},{"qid":6,"qtype":"num","range":"125","ph":"Age in years","ques":{"english":"What was your age at the time of your marriage (age in completed years)?","kannada":"ಮದುವೆ ಯಾದಾಗ ನಿಮ್ಮ ವಯಸ್ಸು ಎಷ್ಟು ?"},"ans":[],"section":"Socio-demographic information","next_qid":7},{"qid":7,"qtype":"radio","ques":{"english":"What is your primary Occupation/employment?","kannada":"ನಿಮ್ಮ ಮುಖ್ಯ ಉದ್ಯೋಗ ಯಾವುದು?"},"ans":[{"aid":1,"value":"Cultivator","value_id":1,"next_qid":8},{"aid":2,"value":"Agricultural labourer","value_id":2,"next_qid":8},{"aid":3,"value":"Administrative/executive/managerial/clerical","value_id":3,"next_qid":8},{"aid":4,"value":"Business","value_id":4,"next_qid":8},{"aid":5,"value":"Skilled manual/machinery","value_id":5,"next_qid":8},{"aid":6,"value":"Working in Shop","value_id":6,"next_qid":8},{"aid":7,"value":"Sales Boy/Girl","value_id":7,"next_qid":8},{"aid":8,"value":"Unskilled Non-agricultural labourer","value_id":8,"next_qid":8},{"aid":9,"value":"Student","value_id":9,"next_qid":8},{"aid":10,"value":"Homemaker","value_id":10,"next_qid":8},{"aid":11,"value":"Others","value_id":11,"next_qid":7.1}],"section":"Socio-demographic information"},{"qid":7.1,"qtype":"text","ph":"Your occupation","ques":{"english":"Please specify your occupation","kannada":"ನಿಮ್ಮ ಉದ್ಯೋಗ"},"ans":[],"section":"Socio-demographic information","next_qid":8},{"qid":8,"qtype":"radio","ques":{"english":"What is your Religion?","kannada":"ನಿಮ್ಮ ಧರ್ಮ?"},"ans":[{"aid":1,"value":"Hindu","value_id":1,"next_qid":9},{"aid":2,"value":"Muslim","value_id":2,"next_qid":9},{"aid":3,"value":"Christian","value_id":3,"next_qid":9},{"aid":4,"value":"Jain","value_id":4,"next_qid":9},{"aid":5,"value":"Buddhist","value_id":5,"next_qid":9},{"aid":6,"value":"Sikh","value_id":6,"next_qid":9},{"aid":7,"value":"Others","value_id":7,"next_qid":9},{"aid":8,"value":"Do not Know","value_id":8,"next_qid":9},{"aid":9,"value":"Not answered","value_id":9,"next_qid":9}],"section":"Socio-demographic information"},{"qid":9,"qtype":"radio","ques":{"english":"What is your caste?","kannada":"ನಿಮ್ಮ ಜಾತಿ?"},"ans":[{"aid":1,"value":"SC","value_id":1,"next_qid":10},{"aid":2,"value":"ST","value_id":2,"next_qid":10},{"aid":3,"value":"OBC","value_id":3,"next_qid":10},{"aid":4,"value":"General","value_id":4,"next_qid":10},{"aid":5,"value":"Do not Know","value_id":5,"next_qid":10},{"aid":6,"value":"Not answered","value_id":6,"next_qid":10}],"section":"Socio-demographic information"},{"qid":10,"qtype":"radio","ques":{"english":"What was your place of last/previous residence?","kannada":"ಇದಕ್ಕಿ೦ತ ಮುಂಚೆ ನೀವು ಎಲ್ಲಿ ವಾಸವಾಗಿದ್ದಿರಿ?"},"ans":[{"aid":1,"value":"Same village/town of assessment","value_id":1,"next_qid":11},{"aid":2,"value":"Not the same village/town of assessment","value_id":2,"next_qid":11}],"section":"Socio-demographic information"},{"qid":11,"qtype":"num","range":"999999999","ph":"Enter income","ques":{"english":"What is the average monthly income of your Household (income from all sources)?","kannada":"ನಿಮ್ಮ ಕುಟು೦ಬದ ತಿ೦ಗಳಿನ ಸರಾಸರಿ ಆದಾಯ ಎಷ್ಟು?(ಎಲ್ಲಾ ಮೂಲಗಳಿ೦ದ ಬರುವ ಆದಾಯ)"},"ans":[],"section":"Socio-demographic information","next_qid":12},{"qid":12,"qtype":"radio","ques":{"english":"Do you practice open defecation?","kannada":"ನೀವು ಬಯಲಿನಲ್ಲಿ ಶೌಚಾಲಯ  ಮಾಡುತ್ತೀರ?"},"ans":[{"aid":1,"value":"Yes","value_id":1,"next_qid":13},{"aid":2,"value":"No","value_id":0,"next_qid":13}],"section":"Socio-demographic information"},{"qid":13,"qtype":"radio","ques":{"english":"What type of Cooking fuel do you use?","kannada":"ನೀವು ಯಾವ ರೀತಿಯ ಅಡುಗೆ ಇ೦ಧನವನ್ನು ಉಪಯೊಗಿಸುತ್ತೀರಾ ?"},"ans":[{"aid":1,"value":"Liquid petroleum gas, electricity or bio-gas","value_id":1,"next_qid":14},{"aid":2,"value":"Kerosene, wood, crop residue, dung  cakes, coal or charcoal","value_id":2,"next_qid":14},{"aid":3,"value":"Other types of cooking fuel, for  example, straw, shrubs or   grass","value_id":3,"next_qid":14}],"section":"Socio-demographic information"},{"qid":14,"qtype":"radio","ques":{"english":"In the past 7 days, on how many days did you eat fruits?","kannada":"ಕಳೆದ 7 ದಿನಗಳಲ್ಲಿ ನೀವು ಎಷ್ಟು ದಿನ ಹಣ್ಣುಗಳನ್ನು ತಿಂದಿದ್ದೀರ?"},"ans":[{"aid":1,"value":"0","value_id":0,"next_qid":16},{"aid":2,"value":"1","value_id":1,"next_qid":15},{"aid":3,"value":"2","value_id":2,"next_qid":15},{"aid":4,"value":"3","value_id":3,"next_qid":15},{"aid":5,"value":"4","value_id":4,"next_qid":15},{"aid":6,"value":"5","value_id":5,"next_qid":15},{"aid":7,"value":"6","value_id":6,"next_qid":15},{"aid":8,"value":"7","value_id":7,"next_qid":15}],"section":"Nutrition"},{"qid":15,"qtype":"num","range":"10","ph":"Number of servings","ques":{"english":"How many servings of fruit did you eat on one of those days? (show picture card)","kannada":"ಒ೦ದು ಸಾಮಾನ್ಯ  ದಿನದಲ್ಲಿ ನೀವು ಎಷ್ಟು ಹಣ್ಣುಗಳನ್ನು ತಿನ್ನುತ್ತೀರ?"},"ans":[],"section":"Nutrition","next_qid":16},{"qid":16,"qtype":"radio","ques":{"english":"In the past 7 days, on how many days did you eat vegetables?","kannada":"ಕಳೆದ 7 ದಿನಗಳಲ್ಲಿ, ನೀವು ಎಷ್ಟು ದಿನ ತರಕಾರಿಗಳನ್ನು ತಿ೦ದಿದ್ದೀರ?"},"ans":[{"aid":1,"value":"0","value_id":0,"next_qid":18.1},{"aid":2,"value":"1","value_id":0,"next_qid":17},{"aid":3,"value":"2","value_id":2,"next_qid":17},{"aid":4,"value":"3","value_id":3,"next_qid":17},{"aid":5,"value":"4","value_id":4,"next_qid":17},{"aid":6,"value":"5","value_id":5,"next_qid":17},{"aid":7,"value":"6","value_id":6,"next_qid":17},{"aid":8,"value":"7","value_id":7,"next_qid":17}],"section":"Nutrition"},{"qid":17,"qtype":"num","range":"10","ph":"Number of servings","ques":{"english":"How many servings of vegetables did you eat on one of those days (show picture card)?","kannada":"ಒಂದು ಸಾಮಾನ್ಯ ದಿನದಲ್ಲಿ ನೀವು ಎಷ್ಟು ತರಕಾರಿಗಳನ್ನು ತಿನ್ನುತ್ತೀರ ?"},"ans":[],"section":"Nutrition","next_qid":18.1},{"qid":18.1,"qtype":"num","range":"999","ph":"Number of times","ques":{"english":"In the past 7 days how many times did you drink carbonated beverages?","kannada":"ಕಳೆದ 7 ದಿನಗಳಲ್ಲಿ, ಎಷ್ಟು ಬಾರಿ ಸೋಡ ಭರಿತ ತ೦ಪಾದ ಪಾನೀಯಗಳನ್ನು ಸೇವಿಸಿದ್ದೀರಿ?"},"ans":[],"section":"Nutrition","next_qid":18.2},{"qid":18.2,"qtype":"num","range":"999","ph":"Number of times","ques":{"english":"In the past 7 days how many times did you drink sugar sweetened beverages?","kannada":"ಕಳೆದ 7 ದಿನಗಳಲ್ಲಿ, ಎಷ್ಟು ಬಾರಿ ಸೋಡಾವಿಲ್ಲದ ತಂಪಾದ ಪಾನೀಯಗಳನ್ನು ಕುಡಿದಿದ್ದೀರ?"},"ans":[],"section":"Nutrition","next_qid":18.3},{"qid":18.3,"qtype":"num","range":"999","ph":"Number of times","ques":{"english":"In the past 7 days how many times did you drink coffee/tea?","kannada":"ಕಳೆದ 7 ದಿನಗಳಲ್ಲಿ, ಎಷ್ಟು ಬಾರಿ ಕಾಫಿ ಅಥವಾ ಟೀ ಕುಡಿದಿದ್ದೀರ?"},"ans":[],"section":"Nutrition","next_qid":18.4},{"qid":18.4,"qtype":"num","range":"999","ph":"Number of times","ques":{"english":"In the past 7 days how many times did you eat any of the following food items - Burgers, pizzas, tacos, donuts, sandwiches, burger-patties, pasta and bread fillings (may or may not be sold by branded restaurants)? ","kannada":"ಕಳೆದ 7 ದಿನಗಳಲ್ಲಿ, ಎಷ್ಟು ಬಾರಿ ಫ್ಹಿಜಾ, ಬರ್ಗರ್, ಫ್ರೆನ್ಚ್ ಫ್ರೈಸ್, ಟ್ಯಾಕೋಸ್ , ಡೋನಟ್ಸ್, ಸ್ಯಾಂಡ್ ವಿಚ್, ಪಾಸ್ತಾ, ಇನ್ನು ಇತರೆ ಆಹಾರಗಳನ್ನು  ತಿಂದಿದ್ದೀರ?"},"ans":[],"section":"Nutrition","next_qid":18.5},{"qid":18.5,"qtype":"num","range":"999","ph":"Number of times","ques":{"english":"In the past 7 days how many times did you eat any of the following food items - Samosa, bhajji, patties, Manchurian, noodles, bakery products? ","kannada":"ಕಳೆದ 7 ದಿನಗಳಲ್ಲಿ, ಎಷ್ಟು ಬಾರಿ ಸಮೋಸ, ಬಜ್ಜಿ, ಪಪ್ಸ್, ನೂಡಲ್ಸ್, ಮ೦ಚೂರೀಸ್, ಬೇಕರಿ ತಿನಿಸುಗಳನ್ನು  ತಿಂದಿದ್ದೀರ?"},"ans":[],"section":"Nutrition","next_qid":19},{"qid":19,"qtype":"radio","ques":{"english":"During the last 7 days, on how many days did you do vigorous physical activities as part of work, sports, fitness or recreational activity (use show card). Think about only those physical activities that you did for at least 10 minutes at a time","kannada":"ಕಳೆದ 7 ದಿನಗಳಲ್ಲಿ, ನಿಮ್ಮ ಕೆಲಸದಲ್ಲಿ, ಆಟಗಳಲ್ಲಿ, ದೈಹಿಕ ಚಟುವಟಿಕೆಗಳಲ್ಲಿ ನೀವು ದೈಹಿಕವಾಗಿ ಅತೀವ ಶ್ರಮದ ಕೆಲಸಗಳನ್ನು ಮಾಡಿದ್ದೀರಾ ? (ಉಸಿರಾಟ ಮತ್ತು ಹೃದಯ ಬಡಿತದಲ್ಲಿ ಹೆಚ್ಚಳವಾಗುವ೦ತಹ ಕೆಲಸ). ಈ ತರಹದ ದೈಹಿಕ ಹೆಚ್ಚುವರಿ ಶ್ರಮದ ಕೆಲಸಗಳನ್ನು ನಿರ೦ತರವಾಗಿ 10 ನಿಮಿಷಗಳ ಕಾಲ ಮಾಡುವುದು."},"ans":[{"aid":1,"value":"0","value_id":0,"next_qid":21},{"aid":2,"value":"1","value_id":1,"next_qid":20},{"aid":3,"value":"2","value_id":2,"next_qid":20},{"aid":4,"value":"3","value_id":3,"next_qid":20},{"aid":5,"value":"4","value_id":4,"next_qid":20},{"aid":6,"value":"5","value_id":5,"next_qid":20},{"aid":7,"value":"6","value_id":6,"next_qid":20},{"aid":8,"value":"7","value_id":7,"next_qid":20}],"section":"Physical Activity"},{"qid":20,"qtype":"time","ques":{"english":"How much time in total did you usually spend on one of those days doing vigorous physical activities?","kannada":"ನಿಮ್ಮ ಕೆಲಸದಲ್ಲಿ ಒ೦ದು ಸಾಮಾನ್ಯ ದಿನದಲ್ಲಿ ದೈಹಿಕವಾಗಿ ಅತೀವ ಶ್ರಮದ ಕೆಲಸಗಳನ್ನು ಎಷ್ಟು ಗ೦ಟೆಗಳ ಕಾಲ ಮಾಡುತ್ತೀರ?"},"ans":[],"section":"Physical Activity","next_qid":21},{"qid":21,"qtype":"radio","ques":{"english":"During the last 7 days, on how many days did you do moderate physical activities as part of work, sports, fitness or recreational activity (use show card)   Think about only those physical activities that you did for at least 10 minutes at a time","kannada":"ನಿಮ್ಮ ಕೆಲಸದಲ್ಲಿ, ಆಟಗಳಲ್ಲಿ, ದೈಹಿಕ ಚಟುವಟಿಕೆಗಳಲ್ಲಿ ಕಳೆದ 7 ದಿನಗಳಲ್ಲಿ, ಎಷ್ಟು ದಿನಗಳು ದೈಹಿಕವಾಗಿ  ಹೆಚ್ಚುವರಿ ಶ್ರಮದ ಕೆಲಸಗಳನ್ನು ಮಾಡಿದ್ದೀರಾ ? ಈ ತರಹದ ದೈಹಿಕ ಹೆಚ್ಚುವರಿ ಶ್ರಮದ ಕೆಲಸಗಳನ್ನು ನಿರ೦ತರವಾಗಿ 10 ನಿಮಿಷಗಳ ಕಾಲ ಮಾಡುವುದು."},"ans":[{"aid":1,"value":"0","value_id":0,"next_qid":23},{"aid":2,"value":"1","value_id":1,"next_qid":22},{"aid":3,"value":"2","value_id":2,"next_qid":22},{"aid":4,"value":"3","value_id":3,"next_qid":22},{"aid":5,"value":"4","value_id":4,"next_qid":22},{"aid":6,"value":"5","value_id":5,"next_qid":22},{"aid":7,"value":"6","value_id":6,"next_qid":22},{"aid":8,"value":"7","value_id":7,"next_qid":22}],"section":"Physical Activity"},{"qid":22,"qtype":"time","ques":{"english":"How much time in total did you usually spend on one of those days doing moderate physical activities?","kannada":"ನಿಮ್ಮ ಕೆಲಸದಲ್ಲಿ ಒ೦ದು ಸಾಮಾನ್ಯ ದಿನದಲ್ಲಿ ದೈಹಿಕವಾಗಿ ಹೆಚ್ಚುವರಿ  ಶ್ರಮದ ಕೆಲಸಗಳನ್ನು ಎಷ್ಟು ಗ೦ಟೆಗಳ ಕಾಲ ಮಾಡುತ್ತೀರ?"},"ans":[],"section":"Physical Activity","next_qid":23},{"qid":23,"qtype":"radio","ques":{"english":"During the last 7 days, on how many days did you walk or bicycle for at least 10 minutes at a time? This includes walking at work and at home, walking to travel from place to place, and any other walking that you did solely for recreation, sport, exercise or leisure.","kannada":"ಒ೦ದು ಸಾಮಾನ್ಯ ವಾರದಲ್ಲಿ ನೀವು ಎಷ್ಟು ದಿನಗಳು ಕನಿಷ್ಟ 10 ನಿಮಿಷಗಳ ಕಾಲ ನಿರ೦ತರವಾಗಿ ಸ್ಥಳಗಳಿಗೆ ಹೋಗಿ ಬರಲು ನಡೆಯುತ್ತೀರಾ ಅಥವಾ ಸೈಕಲ್ ಬಳಸುತ್ತೀರ? ಇದು ಕೆಲಸದಲ್ಲಿ ಮತ್ತು ಮನೆಯಲ್ಲಿ ನಡೆಯುವುದು,ಸ್ಥಳದಿಂದ ಸ್ಥಳಕ್ಕೆ ಪ್ರಯಾಣಿಸುವುದು, ಮತ್ತು ಮನೋರಂಜನೆ, ಕ್ರೀಡೆ, ವ್ಯಾಯಾಮ ಅಥವಾ ವಿರಾಮಕ್ಕಾಗಿ ನೀವು ಮಾಡಿದ ಯಾವುದೇ ನಡಿಗೆಯನ್ನು ಒಳಗೊಂಡಿದೆ. "},"ans":[{"aid":1,"value":"0","value_id":0,"next_qid":25},{"aid":2,"value":"1","value_id":1,"next_qid":24},{"aid":3,"value":"2","value_id":2,"next_qid":24},{"aid":4,"value":"3","value_id":3,"next_qid":24},{"aid":5,"value":"4","value_id":4,"next_qid":24},{"aid":6,"value":"5","value_id":5,"next_qid":24},{"aid":7,"value":"6","value_id":6,"next_qid":224},{"aid":8,"value":"7","value_id":7,"next_qid":24}],"section":"Physical Activity"},{"qid":24,"qtype":"time","ques":{"english":"How much time in total did you usually spend walking or bicycling in one of those days?","kannada":"ನೀವು ಆ ದಿನಗಳಲ್ಲಿ ನಡಿಗೆ ಅಥವಾ ಸೈಕಲ್ ಪ್ರಯಾಣವನ್ನು ಎಷ್ಟು ಗ೦ಟೆಗಳ ಕಾಲ ಮಾಡುತ್ತೀರ?"},"ans":[],"section":"Physical Activity","next_qid":25},{"qid":25,"qtype":"time","ques":{"english":"During the last 7 days, how much time in total did you usually spend sitting on a week day? (consider the time in Work place/ school/college/home/while commuting)","kannada":"ಕಳೆದ 7 ದಿನಗಳಲ್ಲಿ, ಒಂದು ಸಾಮಾನ್ಯ ದಿನದಲ್ಲಿ ನೀವು ಕೆಲಸ ಮಾಡುವ ಸ್ಥಳದಲ್ಲಿ/ಶಾಲೆಯಲ್ಲಿ /ಕಾಲೇಜಿನಲ್ಲಿ ಕುಳಿತುಕೊಳ್ಳಲು  ಎಷ್ಟು ಸಮಯ ಕಳೆಯುವಿರಿ?"},"ans":[],"section":"Physical Activity","next_qid":26},{"qid":26,"qtype":"radio","ques":{"english":"Do you <u>currently smoke</u> any tobacco products (cigarettes/bidis)","kannada":"ನೀವು ಧೂಮಪಾನ ಮಾಡುತ್ತೀರಾ? (ಸಿಗರೇಟ್, ಬೀಡಿ, ಸಿಗಾರ್, ಕೊಳವೆ ತಂಬಾಕು)"},"ans":[{"aid":1,"value":"No","value_id":0,"next_qid":35},{"aid":2,"value":"Yes-Daily","value_id":1,"next_qid":27},{"aid":3,"value":"Yes-not daily  but within past 30 days","value_id":2,"next_qid":27},{"aid":4,"value":"Yes-not daily and not in the past 30 days","value_id":3,"next_qid":27}],"section":"Tobacco - Smoking"},{"qid":27,"qtype":"num","range":"99","ph":"Enter age","ques":{"english":"How <u>old were you</u> when you first started Smoking? Age in completed years?","kannada":"ನೀವು ಧೂಮಪಾನ ಅಭ್ಯಾಸ ಆರಂಭಿಸಿದಾಗ  ನಿಮಗೆ ಎಷ್ಟು ವಯಸ್ಸು?"},"ans":[],"section":"Tobacco - Smoking","next_qid":28},{"qid":28,"qtype":"num","range":"99","ph":"Enter number","ques":{"english":"On an average how many cigarettes/ bidis do you smoke on a typical smoking day?","kannada":"ಒಂದು ದಿನದಲ್ಲಿ ನೀವು ಎಷ್ಟು (ಅಂದಾಜು ) ಬೀಡಿ/ಸಿಗರೇಟ್  ಗಳನ್ನು  ಸೇದುತ್ತೀರಿ?"},"ans":[],"section":"Tobacco - Smoking","next_qid":29},{"qid":29,"qtype":"radio","ques":{"english":"<u>How soon after you wake up</u> do you smoke your first cigarette?","kannada":"ಬೆಳಿಗ್ಗೆ ಎದ್ದ ಮೇಲೆ ಎಷ್ಟು ಸಮಯದ ಒಳಗೆ ಮೊದಲನೆಯ ಬೀಡಿ/ಸಿಗರೇಟ್ ನ್ನು ಸೇದುತ್ತೀರಾ?"},"ans":[{"aid":1,"value":"WITHIN 5 MINUTES","value_id":3,"next_qid":30},{"aid":2,"value":"6-30 MINUTES","value_id":2,"next_qid":30},{"aid":3,"value":"31-60 MINUTES","value_id":1,"next_qid":30},{"aid":4,"value":"AFTER 60 MINUTES","value_id":0,"next_qid":30}],"section":"Tobacco - Smoking"},{"qid":30,"qtype":"radio","ques":{"english":"Do you find it difficult to refrain from smoking in the places where it is forbidden (i.e.: in church,temple, mosques, at the library, in cinema theaters)?","kannada":"ಧೂಮಪಾನ ನಿಷೇಧಿತ ಸ್ಥಳಗಳಲ್ಲಿ (ಚರ್ಚ್, ದೇವಸ್ಥಾನ, ಮಸೀದಿ, ಗ್ರಂಥಾಲಯ, ಚಿತ್ರ ಮಂದಿರ ) ನಿಮಗೆ ಧೂಮಪಾನ ಮಾಡದೇ ಇರಲು ಕಷ್ಟವಾಗುತ್ತ?"},"ans":[{"aid":1,"value":"Yes","value_id":1,"next_qid":31},{"aid":2,"value":"No","value_id":0,"next_qid":31}],"section":"Tobacco - Smoking"},{"qid":31,"qtype":"radio","ques":{"english":"Which cigarette would you hate most to give up?","kannada":"ದಿನದ ಯಾವ ಸಮಯದಲ್ಲಿ ಸೇದುವ ಬೀಡಿ/ಸಿಗರೇಟ್ ನ್ನು ಬಿಡಲು ನೀವು ಹೆಚ್ಚಾಗಿ ಇಷ್ಟ ಪಡುವುದಿಲ್ಲ?"},"ans":[{"aid":1,"value":"THE FIRST ONE IN THE MORNING","value_id":1,"next_qid":32},{"aid":2,"value":"ANY OTHER","value_id":1,"next_qid":32}],"section":"Tobacco - Smoking"},{"qid":32,"qtype":"radio","ques":{"english":"How many cigarettes/day do you smoke?","kannada":"ಒಂದು ದಿನದಲ್ಲಿ  ನೀವು ಎಷ್ಟು ಬೀಡಿ / ಸಿಗರೇಟ್ ಗಳನ್ನು ಸೇದುತ್ತೀರಿ?"},"ans":[{"aid":1,"value":"10 OR LESS","value_id":0,"next_qid":33},{"aid":2,"value":"11-20","value_id":1,"next_qid":33},{"aid":3,"value":"21-30","value_id":2,"next_qid":33},{"aid":4,"value":"31 OR MORE","value_id":3,"next_qid":33}],"section":"Tobacco - Smoking"},{"qid":33,"qtype":"radio","ques":{"english":"Do you smoke more frequently during the first hours after waking than during the rest of the day? ","kannada":"ದಿನದ ಉಳಿದ ಸಮಯಕ್ಕಿಂತ ನಿದ್ದೆಯಿಂದ ಎಚ್ಚರವಾದ ಒಂದು ಗಂಟೆಯೊಳಗೆ ನೀವು ಹೆಚ್ಚಾಗಿ ಧೂಮಪಾನ  ಮಾಡುತ್ತೀರಾ?"},"ans":[{"aid":1,"value":"Yes","value_id":1,"next_qid":34},{"aid":2,"value":"No","value_id":0,"next_qid":34}],"section":"Tobacco - Smoking"},{"qid":34,"qtype":"radio","ques":{"english":"Do you smoke if you are so ill that you are in bed most of the day?","kannada":"ನಿಮಗೆ ಆರೋಗ್ಯ ಕೆಟ್ಟು ಹಾಸಿಗೆ ಹಿಡಿದಾಗಲು ಸಹ ನೀವು ಧೂಮಪಾನ  ಮಾಡುತ್ತೀರಾ?"},"ans":[{"aid":1,"value":"Yes","value_id":1,"next_qid":35},{"aid":2,"value":"No","value_id":0,"next_qid":35}],"section":"Tobacco - Smoking"},{"qid":35,"qtype":"radio","ques":{"english":"Do you currently use smokeless tobacco products (Gutka, Khaini, Hans, Squid, betel leaves with tobacco, tobacco powder)","kannada":"ನೀವು ಗುಟ್ಕಾ, ಖೈನಿ, ಹನ್ಸ್, ಸ್ಕ್ವಿಡ್, ಎಲೆ-ಅಡಿಕೆ-ಜೊತೆ ತಂಬಾಕು,  ತಂಬಾಕಿನ ಪುಡಿಗಳನ್ನು ಸೇವಿಸುತ್ತೀರಾ?"},"ans":[{"aid":1,"value":"No","value_id":0,"next_qid":43},{"aid":2,"value":"Yes-Daily","value_id":1,"next_qid":36},{"aid":3,"value":"Yes-not daily  but within past 30 days","value_id":2,"next_qid":36},{"aid":4,"value":"Yes-not daily and not in the past 30 days","value_id":3,"next_qid":36}],"section":"Tobacco - SMOKELESS TOBACCO"},{"qid":36,"qtype":"num","range":"99","ph":"Enter age","ques":{"english":"How old were you when you first used smokeless tobacco product? Age in completed years ","kannada":"ನೀವು ಹೊಗೆರಹಿತ ತಂಬಾಕನ್ನು ಉಪಯೋಗಿಸಲು ಆರಂಭಿಸಿದಾಗ ನಿಮಗೆ ಎಷ್ಟು ವಯಸ್ಸು?  ?"},"ans":[],"section":"Tobacco - SMOKELESS TOBACCO","next_qid":37},{"qid":37,"qtype":"radio","ques":{"english":"How soon after you wake up do you place your first dip?","kannada":"ಬೆಳಿಗ್ಗೆ ಎದ್ದ ಮೇಲೆ ಎಷ್ಟು ಸಮಯದ ಒಳಗೆ ಮೊದಲನೆಯ ತಂಬಾಕನ್ನು ಉಪಯೋಗಿಸುತ್ತೀರಾ ?"},"ans":[{"aid":1,"value":"WITHIN 5 MINUTES","value-id":3,"next_qid":38},{"aid":2,"value":"6-30 MINUTES","value-id":2,"next_qid":38},{"aid":3,"value":"31-60 MINUTES","value-id":1,"next_qid":38},{"aid":4,"value":"AFTER 60 MINUTES","value-id":0,"next_qid":38}],"section":"Tobacco - SMOKELESS TOBACCO"},{"qid":38,"qtype":"radio","ques":{"english":"How often do you intentionally swallow tobacco juice? ","kannada":"ತಂಬಾಕನ್ನು ಅಗಿಯುವಾಗ ನೀವು ಎಷ್ಟು ಬಾರಿ ಅದರ ರಸವನ್ನು ಬೇಕಂತಲೆ ನುಂಗಿದ್ದೀರಿ?"},"ans":[{"aid":1,"value":"ALWAYS","value-id":2,"next_qid":39},{"aid":2,"value":"SOMETIME","value-id":1,"next_qid":39},{"aid":3,"value":"NEVER","value-id":0,"next_qid":39}],"section":"Tobacco - SMOKELESS TOBACCO"},{"qid":39,"qtype":"radio","ques":{"english":"Which chew would you hate most to give up?","kannada":"ದಿನದ ಯಾವ ಸಮಯದಲ್ಲಿ ಉಪಯೋಗಿಸುವ ತಂಬಾಕನ್ನು ಬಿಡಲು ನೀವು ಹೆಚ್ಚಾಗಿ ಇಷ್ಟ ಪಡುವುದಿಲ್ಲ?"},"ans":[{"aid":1,"value":"THE FIRST ONE IN THE MORNING","value_id":1,"next_qid":40},{"aid":2,"value":"ANY OTHER","value_id":0,"next_qid":40}],"section":"Tobacco - SMOKELESS TOBACCO"},{"qid":40,"qtype":"radio","ques":{"english":"How many cans/pouches per week do you use?  ","kannada":"ನೀವು ವಾರಕ್ಕೆ ಎಷ್ಟು ಪ್ಯಾಕೆಟ್ ತಂಬಾಕನ್ನು ಉಪಯೋಗಿಸುತ್ತೀರಾ?"},"ans":[{"aid":1,"value":"MORE THAN 3","value_id":22,"next_qid":41},{"aid":2,"value":"2 TO 3","value_id":1,"next_qid":41},{"aid":3,"value":"1","value_id":0,"next_qid":41}],"section":"Tobacco - SMOKELESS TOBACCO"},{"qid":41,"qtype":"radio","ques":{"english":"Do you chew more frequently during the first hours after waking than during the rest of the day?","kannada":"ದಿನದ ಉಳಿದ ಸಮಯಕ್ಕಿಂತ ನಿದ್ದೆಯಿಂದ ಎಚ್ಚರವಾದ ಒಂದು ಗಂಟೆಯೊಳಗೆ ನೀವು ಹೆಚ್ಚಾಗಿ ತಂಬಾಕನ್ನು ಉಪಯೋಗಿಸುತ್ತೀರಾ?"},"ans":[{"aid":1,"value":"Yes","value_id":1,"next_qid":42},{"aid":2,"value":"No","value_id":0,"next_qid":42}],"section":"Tobacco - SMOKELESS TOBACCO"},{"qid":42,"qtype":"radio","ques":{"english":"Do you chew if you are so ill that you are in bed most of the day?","kannada":"ನಿಮಗೆ ಆರೋಗ್ಯ ಕೆಟ್ಟು ಹಾಸಿಗೆ ಹಿಡಿದಾಗಲೂ ಸಹ ನೀವು ತಂಬಾಕನ್ನು ಉಪಯೋಗಿಸುತ್ತೀರಾ ?"},"ans":[{"aid":1,"value":"Yes","value_id":1,"next_qid":43},{"aid":2,"value":"No","value_id":0,"next_qid":43}],"section":"Tobacco - SMOKELESS TOBACCO"},{"qid":43,"qtype":"radio","ques":{"english":"Do you currently consume alcohol drink (such as beer, wine, spirits, or any local wine product)","kannada":"ನೀವು ಮದ್ಯಪಾನ ಮಾಡುತ್ತೀರಾ? (ಬಿಯರ್, ವೈನ್, ವಿಸ್ಕಿ, ಸ್ಥಳಿಯ ಸಾರಾಯಿ ಉತ್ಪನ್ನ)"},"ans":[{"aid":1,"value":"No","value_id":0,"next_qid":58},{"aid":2,"value":"Yes- in the past 30 days","value_id":1,"next_qid":44},{"aid":3,"value":"Yes-in the past 12 months","value_id":2,"next_qid":44}],"section":"ALCOHOL"},{"qid":44,"qtype":"num","range":"99","ph":"Enter age","ques":{"english":"How old were you when you had your first drink of alcohol other than a few sips?","kannada":"ನೀವು ಮದ್ಯಪಾನ  ಅಭ್ಯಾಸವನ್ನು ಆರಂಭಿಸಿದಾಗ ನಿಮಗೆ ಎಷ್ಟು ವಯಸ್ಸು ? "},"ans":[],"section":"ALCOHOL","next_qid":45},{"qid":45,"qtype":"radio","ques":{"english":"During the past 12 months, how frequently have you had at least one alcoholic drink?  ","kannada":"ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ ,  ಎಷ್ಟು ಬಾರಿ ಮದ್ಯಪಾನ ಮಾಡಿದ್ದೀರಾ? (ಕನಿಷ್ಠ 1 ಡ್ರಿಂಕ್)"},"ans":[{"aid":1,"value":"Daily","value_id":1,"next_qid":46},{"aid":2,"value":"5-6 days per week","value_id":2,"next_qid":46},{"aid":3,"value":"1-4 days per week","value_id":3,"next_qid":46},{"aid":4,"value":"1-3 days per month","value_id":4,"next_qid":46},{"aid":5,"value":"Less than once a month","value_id":5,"next_qid":46}],"section":"ALCOHOL"},{"qid":46,"qtype":"num","range":"99","ph":"Number of drinks","ques":{"english":"On average, how many standard alcoholic drinks did you have during one typical drinking occasion?","kannada":"ನೀವು ಮದ್ಯಪಾನ ಮಾಡುವಾಗ ಅಂದಾಜಾಗಿ ಎಷ್ಟು ಡ್ರಿಂಕ್ ಕುಡಿತ್ತೀರಾ?"},"ans":[],"section":"ALCOHOL","next_qid":47},{"qid":47,"qtype":"num","range":"99","ph":"Number of drinks","ques":{"english":"During the past 30 days, <br>For men: how many times did you have five or more drink <br> For women: four or more standard alcoholic drinks (for women) <br>in a single drinking occasion?","kannada":"ಕಳೆದ 30 ದಿನಗಳಲ್ಲಿ, ನೀವು ಎಷ್ಟು ಬಾರಿ ಒಂದು ಸಮಯದಲ್ಲಿ  (ಗಂಡಸರಿಗೆ: 5 ಅಥವಾ ಹೆಚ್ಚು; ಹೆಂಗಸರಿಗೆ: 4 ಅಥವಾ ಹೆಚ್ಚು ) ಡ್ರಿಂಕ್ ಸೇವಿಸಿದ್ದೀರಾ?"},"ans":[],"section":"ALCOHOL","next_qid":48},{"qid":48,"qtype":"radio","ques":{"english":"<u>How often</u> do you have a drink containing alcohol?","kannada":"ನೀವು ಎಷ್ಟು ಬಾರಿ  ಮದ್ಯಪಾನ ಸೇವಿಸುತ್ತೀರಾ? "},"ans":[{"aid":1,"value":"NEVER","value_id":0,"next_qid":49},{"aid":2,"value":"MONTHLY OR LESS","value_id":1,"next_qid":49},{"aid":3,"value":"2 TO 4 TIMES A MONTH","value_id":2,"next_qid":49},{"aid":4,"value":"2 TO 3 TIMES A WEEK","value_id":3,"next_qid":49},{"aid":5,"value":"4 OR MORE TIMES A WEEK","value_id":4,"next_qid":49}],"section":"ALCOHOL DEPENDENCE –AUDIT SCALE"},{"qid":49,"qtype":"radio","ques":{"english":"How many drinks containing alcohol do you have on a typical day when you are drinking?  ","kannada":"ಸಾಮಾನ್ಯವಾಗಿ ನೀವು ಮದ್ಯಪಾನ ಮಾಡುವಾಗ ಎಷ್ಟು ಡ್ರಿಂಕ್ ಕುಡಿತೀರಾ?"},"ans":[{"aid":1,"value":"1 OR 2","value_id":0,"next_qid":50},{"aid":2,"value":"3 OR 4","value_id":1,"next_qid":50},{"aid":3,"value":"5 OR 6","value_id":22,"next_qid":50},{"aid":4,"value":"7, 8, OR 9","value_id":3,"next_qid":50},{"aid":5,"value":"10 OR MORE","value_id":4,"next_qid":50}],"section":"ALCOHOL DEPENDENCE –AUDIT SCALE"},{"qid":50,"qtype":"radio","ques":{"english":"How often do you have six or more drinks on one occasion?  ","kannada":"ನೀವು ಕುಡಿಯಲು ಕೂತಾಗ ಎಷ್ಟು ಬಾರಿ 6 ಕ್ಕಿಂತ ಹೆಚ್ಚು ಡ್ರಿಂಕ್ ಕುಡಿದಿದ್ದೀರಾ?"},"ans":[{"aid":1,"value":"NEVER","value_id":0,"next_qid":51},{"aid":2,"value":"LESS THAN MONTHLY","value_id":1,"next_qid":51},{"aid":3,"value":"MONTHLY","value_id":2,"next_qid":51},{"aid":4,"value":"WEEKLY","value_id":3,"next_qid":51},{"aid":5,"value":"DAILY OR ALMOST DAILY","value_id":4,"next_qid":51}],"section":"ALCOHOL DEPENDENCE –AUDIT SCALE"},{"qid":51,"qtype":"radio","ques":{"english":"How often during the <b>last year</b> have you found that you were not able to stop drinking once you had started?","kannada":"ಕಳೆದ ವರ್ಷದಲ್ಲಿ ಎಷ್ಟು ಬಾರಿ, ನೀವು ಕುಡಿಯಲು ಕೂತಾಗ ಕುಡಿಯುವುದನ್ನು ನಿಲ್ಲಿಸಲು ನಿಮಗೆ ಕಷ್ಟವಾಗಿತ್ತು?"},"ans":[{"aid":1,"value":"NEVER","value_id":0,"next_qid":52},{"aid":2,"value":"LESS THAN MONTHLY","value_id":1,"next_qid":52},{"aid":3,"value":"MONTHLY","value_id":2,"next_qid":52},{"aid":4,"value":"WEEKLY","value_id":3,"next_qid":52},{"aid":5,"value":"DAILY OR ALMOST DAILY","value_id":4,"next_qid":52}],"section":"ALCOHOL DEPENDENCE –AUDIT SCALE"},{"qid":52,"qtype":"radio","ques":{"english":"How often during the <b>last year</b> have you failed to do what was normally expected from you because of drinking? ","kannada":"ಕಳೆದ ವರ್ಷದಲ್ಲಿ ಕುಡಿತದ ಕಾರಣದಿಂದಾಗಿ ಸಾಮಾನ್ಯವಾಗಿ ನಿಮ್ಮಿಂದ ನಿರೀಕ್ಷಿಸಿದ ಕೆಲಸಗಳನ್ನು ಎಷ್ಟು ಬಾರಿ ಮಾಡಲು ಆಗಿಲ್ಲ ?"},"ans":[{"aid":1,"value":"NEVER","value_id":0,"next_qid":53},{"aid":2,"value":"LESS THAN MONTHLY","value_id":1,"next_qid":53},{"aid":3,"value":"MONTHLY","value_id":2,"next_qid":53},{"aid":4,"value":"WEEKLY","value_id":3,"next_qid":53},{"aid":5,"value":"DAILY OR ALMOST DAILY","value_id":4,"next_qid":53}],"section":"ALCOHOL DEPENDENCE –AUDIT SCALE"},{"qid":53,"qtype":"radio","ques":{"english":"How often during the <b>last year</b> have you needed a first drink in the morning to get yourself going after a heavy drinking session? ","kannada":"ನೀವು ಕಳೆದ ವರ್ಷದಲ್ಲಿ ಎಷ್ಟು ಬಾರಿ  ಹೆಚ್ಚು ಮದ್ಯಪಾನ ಮಾಡಿದ ಮರುದಿನ,  ದಿನ ನಿತ್ಯದ ಕೆಲಸಗಳನ್ನು ಮಾಡಲು ಬೆಳಿಗ್ಗೆ ಮೊದಲಿಗೆ ಮದ್ಯಪಾನ ಸೇವನೆ ಮಾಡಿದ್ದೀರ?"},"ans":[{"aid":1,"value":"NEVER","value_id":0,"next_qid":54},{"aid":2,"value":"LESS THAN MONTHLY","value_id":1,"next_qid":54},{"aid":3,"value":"MONTHLY","value_id":2,"next_qid":54},{"aid":4,"value":"WEEKLY","value_id":3,"next_qid":54},{"aid":5,"value":"DAILY OR ALMOST DAILY","value_id":4,"next_qid":54}],"section":"ALCOHOL DEPENDENCE –AUDIT SCALE"},{"qid":54,"qtype":"radio","ques":{"english":"How often during the <b>last year</b> have you had a feeling of guilt or remorse after drinking? ","kannada":"ಕಳೆದ ವರ್ಷದಲ್ಲಿ ಎಷ್ಟು ಬಾರಿ ನಿಮಗೆ ಕುಡಿದ ನಂತರ ತಪ್ಪು ಮಾಡಿದ್ದೀನಿ ಅಥವಾ ಕುಡಿಯಬಾರದಾಗಿತ್ತು ಎಂದು ಅನಿಸಿದೆ?"},"ans":[{"aid":1,"value":"NEVER","value_id":0,"next_qid":55},{"aid":2,"value":"LESS THAN MONTHLY","value_id":1,"next_qid":55},{"aid":3,"value":"MONTHLY","value_id":2,"next_qid":55},{"aid":4,"value":"WEEKLY","value_id":3,"next_qid":55},{"aid":5,"value":"DAILY OR ALMOST DAILY","value_id":4,"next_qid":55}],"section":"ALCOHOL DEPENDENCE –AUDIT SCALE"},{"qid":55,"qtype":"radio","ques":{"english":"How often during the last year have you been unable to remember what happened the night before because you had been drinking? ","kannada":"ಕಳೆದ ವರ್ಷದಲ್ಲಿ , ನೀವು ಕುಡಿದ ನಂತರ  ರಾತ್ರಿ  ಏನಾಯಿತು ಎಂದು ಎಷ್ಟು ಬಾರಿ ಮರೆತೋಗಿದ್ದೀರಾ?"},"ans":[{"aid":1,"value":"NEVER","value_id":0,"next_qid":56},{"aid":2,"value":"LESS THAN MONTHLY","value_id":1,"next_qid":56},{"aid":3,"value":"MONTHLY","value_id":2,"next_qid":56},{"aid":4,"value":"WEEKLY","value_id":3,"next_qid":56},{"aid":5,"value":"DAILY OR ALMOST DAILY","value_id":4,"next_qid":56}],"section":"ALCOHOL DEPENDENCE –AUDIT SCALE"},{"qid":56,"qtype":"radio","ques":{"english":"Have you or someone else been injured as a result of your drinking? ","kannada":"ನೀವು ಕುಡಿದಿದ್ದರಿಂದ ನಿಮಗೆ ಅಥವಾ ಬೇರೆಯವರಿಗೆ ಗಾಯ / ಪೆಟ್ಟು ಆಗಿತ್ತೇ?"},"ans":[{"aid":1,"value":"No","value_id":0,"next_qid":57},{"aid":2,"value":"YES, BUT NOT IN THE LAST YEAR","value_id":1,"next_qid":57},{"aid":3,"value":"YES, DURING THE LAST YEAR","value_id":2,"next_qid":57}],"section":"ALCOHOL DEPENDENCE –AUDIT SCALE"},{"qid":57,"qtype":"radio","ques":{"english":"Has a relative or friend or a doctor or another health worker been concerned about your drinking or suggested you cut down? ","kannada":"ನಿಮ್ಮ ಕುಡಿತದ ಅಭ್ಯಾಸವನ್ನು ಕಂಡು ನಿಮ್ಮ ಸಂಬಂಧಿಕರು / ಸ್ನೇಹಿತರು / ವೈದ್ಯರು / ಇತರ ಆರೋಗ್ಯ ಕಾರ್ಯಕರ್ತರು ಕಾಳಜಿಯನ್ನು ವ್ಯಕ್ತಪಡಿಸಿದ್ದಾರಾ ಅಥವಾ ಕುಡಿಯುವುದನ್ನು ಕಡಿಮೆ  ಮಾಡಲು ಹೇಳಿದ್ದಾರ ?"},"ans":[{"aid":1,"value":"No","value_id":0,"next_qid":58},{"aid":2,"value":"YES, BUT NOT IN THE LAST YEAR","value_id":1,"next_qid":58},{"aid":3,"value":"YES, DURING THE LAST YEAR","value_id":2,"next_qid":58}],"section":"ALCOHOL DEPENDENCE –AUDIT SCALE"},{"qid":58,"qtype":"radio","ques":{"english":"Do you currently use injectable/oral drugs for fun or to get high? (including ganja, heroin, volatile solvents, synthetic preparations)","kannada":"ನೀವು ಕಳೆದ ಒಂದು ವರ್ಷದಲ್ಲಿ ಮಾದಕ ವಸ್ತುಗಳನ್ನು ಬಳಸಿದ್ದೀರಾ(ಗಾಂಜಾ, ಹೆರಾಯಿನ್, ಇನ್ನು ಮುಂತಾದ ಮಾದಕ ದ್ರವ್ಯಗಳು) "},"ans":[{"aid":1,"value":"Yes","value_id":1,"next_qid":59},{"aid":2,"value":"No","value_id":0,"next_qid":61}],"section":"DRUG USE (Ganja/Bhanghi, Opium, Heroin and Others)"},{"qid":59,"qtype":"num","range":"99","ph":"Enter age","ques":{"english":"How old were you the first time you started injecting/sniffing/ consuming drugs for fun or to get high?","kannada":"ನೀವು ಮಾದಕ ವಸ್ತುಗಳನ್ನು ಉಪಯೋಗಿಸಲು ಆರಂಭಿಸಿದಾಗ ನಿಮಗೆ ಎಷ್ಟು ವಯಸ್ಸು?"},"ans":[],"section":"DRUG USE (Ganja/Bhanghi, Opium, Heroin and Others)","next_qid":60},{"qid":60,"qtype":"text","ph":"Enter information separated by commas","ques":{"english":"Can you name the drugs you use?","kannada":"ನೀವು ಉಪಯೋಗಿಸುವ ಮಾದಕ ವಸ್ತುಗಳನ್ನು ತಿಳಿಸಿ"},"ans":[],"section":"DRUG USE (Ganja/Bhanghi, Opium, Heroin and Others)","next_qid":61},{"qid":61,"qtype":"radio","ques":{"english":"In the  past 12 months, Have you sent sexually explicit messages, photographs, or images, of yourself to others through mobile phones, computers or any digital devices?","kannada":"ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ, ನೀವು ಯಾರಿಗಾದರು  ಲೈಂಗಿಕವಾಗಿ ಸಂದೇಶ ಅಥವಾ ಲೈಂಗಿಕವಾಗಿರುವ ನಿಮ್ಮ ಭಾವಚಿತ್ರ ಅಥವಾ ಫೋಟೋವನ್ನ ಮೊಬೈಲ್ , ಕಂಪ್ಯೂಟರ್ ಅಥವಾ ಇನ್ನಿತರೆ ಡಿಜಿಟಲ್ ಮಾಧ್ಯಮದ ಮೂಲಕ ಕಳುಹಿಸಿದ್ದೀರಾ? "},"ans":[{"aid":1,"value":"Yes","value_id":1,"next_qid":62},{"aid":2,"value":"No","value_id":0,"next_qid":62},{"aid":3,"value":"Not Applicable","value_id":77,"next_qid":62}],"section":"SEXUAL BEHAVIOUR"},{"qid":62,"qtype":"radio","ques":{"english":"<b><u>(Ask this question for girls only)</u></b>Which of the following do you generally use during menstrual cycle?","kannada":"ಈ ಪ್ರಶ್ನೆ ಕೇವಲ ಹುಡುಗಿಯರಿಗೆ ಮಾತ್ರ : ನೀವು ಋತುಚಕ್ರ ಸಮಯದಲ್ಲಿ ಯಾವುದನ್ನು ಉಪಯೋಗಿಸುತ್ತೀರಾ?"},"ans":[{"aid":1,"value":"Sanitary pad","value_id":1,"next_qid":63},{"aid":2,"value":"Cloth","value_id":2,"next_qid":63},{"aid":3,"value":"Others","value_id":96,"next_qid":63},{"aid":4,"value":"Not applicable","value_id":77,"next_qid":63}],"section":"SEXUAL BEHAVIOUR"},{"qid":63,"qtype":"radio","ques":{"english":"<b><u>(Ask this question for married individuals)</u></b> Which family planning method do you currently practice?","kannada":"ಮದುವೆಯಾದವರಿಗೆ ಕೇಳುವಂತಹ ಪ್ರಶ್ನೆಗಳು  : ನೀವು ಯಾವ ರೀತಿಯ ಕುಟುಂಬ ನಿಯಂತ್ರಣ ಕ್ರಮಗಳನ್ನು ಅಳವಡಿಸಿಕೊಂಡಿದ್ದೀರಾ ?"},"ans":[{"aid":1,"value":"Oral Pill","value_id":1,"next_qid":64},{"aid":2,"value":"IUD/PPIUD","value_id":2,"next_qid":64},{"aid":3,"value":"Injectables","value_id":3,"next_qid":64},{"aid":4,"value":"Male condom","value_id":4,"next_qid":64},{"aid":5,"value":"Female condom","value_id":5,"next_qid":64},{"aid":6,"value":"Emergency contraception","value_id":6,"next_qid":64},{"aid":7,"value":"Female sterilization","value_id":7,"next_qid":64},{"aid":8,"value":"Male sterilization","value_id":8,"next_qid":64},{"aid":9,"value":"Others (specify)-----","value_id":9,"next_qid":63.1},{"aid":10,"value":"I am not following any method","value_id":10,"next_qid":64},{"aid":11,"value":"Not applicable","value_id":77,"next_qid":64}],"section":"SEXUAL BEHAVIOUR"},{"qid":63.1,"qtype":"text","ph":"Enter information separated by commas","ques":{"english":"Specify the family planning method you use","kannada":"ಮದುವೆಯಾದವರಿಗೆ ಮಾತ್ರ: ನೀವು ಉಪಯೋಗಿಸುವ ಗರ್ಭ ನಿರೋಧಕ ವಿಧಾನವನ್ನು ಹೆಸರಿಸಿ?"},"ans":[],"section":"SEXUAL BEHAVIOUR","next_qid":64},{"qid":64,"qtype":"radio","ques":{"english":"Do you know your age at the time of your first pregnancy?","kannada":"ನೀವು ಮೊದಲ ಬಾರಿ ಗರ್ಭಧರಿಸಿದಾಗ ನಿಮಗೆ ವಯಸ್ಸು ಎಷ್ಟು  ?"},"ans":[{"aid":1,"value":"Yes","value_id":1,"next_qid":64.1},{"aid":2,"value":"Do not know","value_id":99,"next_qid":65},{"aid":3,"value":"Refused to answer","value_id":88,"next_qid":65},{"aid":4,"value":"Not applicable","value_id":77,"next_qid":65}],"section":"SEXUAL BEHAVIOUR"},{"qid":64.1,"qtype":"num","range":"99","ph":"Enter age in years","ques":{"english":"What was your age at the time of your first pregnancy?","kannada":"ಹೆಂಗಸರಿಗೆ ಮಾತ್ರ: ನೀವು ಮೊದಲ ಬಾರಿಗೆ ಗರ್ಭವತಿಯಾದಾಗ ನಿಮಗೆ ವಯಸ್ಸು ಎಷ್ಟು?"},"ans":[],"section":"SEXUAL BEHAVIOUR","next_qid":65},{"qid":65,"qtype":"radio","ques":{"english":"In the past 12 months did you have premarital/extramarital sexual relationship with anyone (including paid sex with commercial sex worker)?","kannada":"ನೀವು ಯಾರೊಂದಿಗಾದರೂ ಲೈಂಗಿಕ ಸಂಬಂಧ ಹೊಂದಿದ್ದೀರಾ ?( ಮದುವೆ ಆದವರು ಸಂಗಾತಿಯನ್ನು ಬಿಟ್ಟು ಬೇರೆಯವರೊಡನೆ ಇರುವ ಲೈಂಗಿಕ ಸಂಬಂಧದ ಬಗ್ಗೆ ತಿಳಿಸಿ)?"},"ans":[{"aid":1,"value":"Yes","value_id":1,"next_qid":66},{"aid":2,"value":"No","value_id":0,"next_qid":70},{"aid":3,"value":"Refused to answer","value_id":88,"next_qid":70}],"section":"SEXUAL BEHAVIOUR"},{"qid":66,"qtype":"num","range":"99","ph":"Enter age in years","ques":{"english":"What was your age at first sexual intercourse?","kannada":"ಮೊದಲ ಬಾರಿ ಲೈಂಗಿಕ ಸಂಬಂಧ ಹೊಂದಿದಾಗ ನಿಮಗೆ ಎಷ್ಟು ವಯಸ್ಸು ?"},"ans":[],"section":"SEXUAL BEHAVIOUR","next_qid":67},{"qid":67,"qtype":"num","range":"99","ph":"Enter number","ques":{"english":"How many sexual partners do you currently have (for married individuals ask other than spouse)","kannada":"ನಿಮಗೆ ಎಷ್ಟು ಜನರೊಡನೆ ಲೈಂಗಿಕ ಸಂಬಂಧ  ಇದೆ? (ಮದುವೆಯಾದವರು, ಸಂಗಾತಿಯನ್ನು ಬಿಟ್ಟು ಎಷ್ಟು ಜನರೆಂದು ತಿಳಿಸಿ)"},"ans":[],"section":"SEXUAL BEHAVIOUR","next_qid":68},{"qid":68,"qtype":"radio","ques":{"english":"Last time when you had sexual intercourse with a partner (for married individuals ask other than spouse) did you use condom?","kannada":"ಕಳೆದ ಬಾರಿ ನೀವು ಲೈಂಗಿಕ ಸಂಬಂಧ ಹೊಂದಿದಾಗ ಕಾಂಡೊಮ್ ಬಳಸಿದ್ದೀರಾ (ಮದುವೆ ಆದವರು ಸಂಗಾತಿಯನ್ನು ಬಿಟ್ಟು ಬೇರೆಯವರೊಡನೆ ಮಾಡಿದ ಲೈಂಗಿಕ ಸಂಬಂಧದ ಕುರಿತು ತಿಳಿಸಿ)"},"ans":[{"aid":1,"value":"Yes","value_id":1,"next_qid":69},{"aid":2,"value":"No","value_id":0,"next_qid":69},{"aid":3,"value":"Do Not Know","value_id":99,"next_qid":69}],"section":"SEXUAL BEHAVIOUR"},{"qid":69,"qtype":"radio","ques":{"english":"In every sexual encounter in the last year, did you or your partner (for married individuals ask other than spouse) always use a condom?","kannada":"ಕಳೆದ ವರ್ಷದಲ್ಲಿ ನೀವು ಲೈಂಗಿಕ ಸಂಬಂಧ ಇಟ್ಟುಕೊಂಡಿದಾಗ ಪ್ರತಿಬಾರಿ ನೀವು ಅಥವಾ ನಿಮ್ಮ ಸಂಗಾತಿಯು ಕಾಂಡೊಮ್ ಉಪಯೋಗಿಸಿದ್ದೀರಾ (ಮದುವೆ ಆದವರು ಸಂಗಾತಿಯನ್ನು ಬಿಟ್ಟು ಬೇರೆಯವರೊಡನೆ ಮಾಡಿದ ಲೈಂಗಿಕ ಸಂಬಂಧದ ಕುರಿತು ತಿಳಿಸಿ)"},"ans":[{"aid":1,"value":"Always","value_id":1,"next_qid":70},{"aid":2,"value":"Most of the time","value_id":2,"next_qid":70},{"aid":3,"value":"Sometime","value_id":3,"next_qid":70},{"aid":4,"value":"Rarely","value_id":4,"next_qid":70},{"aid":5,"value":"Never","value_id":5,"next_qid":70},{"aid":6,"value":"Not applicable","value_id":77,"next_qid":70}],"section":"SEXUAL BEHAVIOUR"},{"qid":70,"qtype":"radio","ques":{"english":"In the past 12 months did you participate in gambling?","kannada":" ನೀವು ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ, ಜೂಜಾಟದಲ್ಲಿ ಭಾಗವಹಿಸಿದ್ದೀರಾ?"},"ans":[{"aid":1,"value":"Yes","value_id":1,"next_qid":71},{"aid":2,"value":"No","value_id":0,"next_qid":75}],"section":"GAMBLING"},{"qid":71,"qtype":"radio","ques":{"english":"What type of gambling activity do you usually engage in?  ","kannada":"ನೀವು ಸಾಮಾನ್ಯವಾಗಿ ಯಾವ ತರಹದ ಜೂಜಾಟದಲ್ಲಿ ಭಾಗವಹಿಸುತ್ತೀರ?"},"ans":[{"aid":1,"value":"Playing cards for money","value_id":1,"next_qid":72},{"aid":2,"value":"Dice game for money","value_id":22,"next_qid":72},{"aid":3,"value":"Lottery","value_id":3,"next_qid":72},{"aid":4,"value":"Betting in animal games","value_id":4,"next_qid":72},{"aid":5,"value":"Betting in casino","value_id":5,"next_qid":72},{"aid":6,"value":"Betting in video games/internet games","value_id":6,"next_qid":72},{"aid":7,"value":"Betting in sports","value_id":7,"next_qid":72},{"aid":8,"value":"Others","value_id":96,"next_qid":71.1}],"section":"GAMBLING"},{"qid":71.1,"qtype":"text","ph":"Enter information separated by commas","ques":{"english":"Specify the gambling activity do you usually engage in","kannada":"ನೀವು ಆಡುವ ಜೂಜಾಟಗಳನ್ನು ಹೆಸರಿಸಿ"},"ans":[],"section":"GAMBLING","next_qid":72},{"qid":72,"qtype":"radio","ques":{"english":"Have you ever tried to stop, cut down, or control your gambling?","kannada":"ಜೂಜಾಟವನ್ನು ನಿಲ್ಲಿಸಲು, ಕಡಿಮೆ ಮಾಡಲು, ನಿಯಂತ್ರಿಸಲು ನೀವು ಎಂದಾದರು ಪ್ರಯತ್ನಿಸಿದ್ದೀರಾ?"},"ans":[{"aid":1,"value":"Yes","value_id":1,"next_qid":73},{"aid":2,"value":"No","value_id":0,"next_qid":73}],"section":"GAMBLING"},{"qid":73,"qtype":"radio","ques":{"english":"Have you ever lied to family members, friends or others about how much you gamble or how much money you lost on gambling?","kannada":"ನೀವು ಎಷ್ಟು ಜೂಜಾಡುತ್ತೀರಾ ಅಥವಾ ಎಷ್ಟು ಹಣ ಕಳೆದುಕೊಂಡಿದೀರ ಎಂಬುದರ ಬಗ್ಗೆ ನಿಮ್ಮ ಮನೆಯವರಿಗೆ, ಸ್ನೇಹಿತರಿಗೆ, ಬೇರೆಯವರಿಗೆ ಎಂದಾದರು ಸುಳ್ಳು ಹೇಳಿದ್ದೀರಾ?"},"ans":[{"aid":1,"value":"Yes","value_id":1,"next_qid":74},{"aid":2,"value":"No","value_id":0,"next_qid":74}],"section":"GAMBLING"},{"qid":74,"qtype":"radio","ques":{"english":"Have there been periods lasting 2 weeks or longer when you spent a lot of time thinking about your gambling experiences, or planning out future gambling ventures or bets?","kannada":"ಎಂದಾದರು ನೀವು ಎರಡು ವಾರಕ್ಕಿಂತ ಹೆಚ್ಚು ಸಮಯ ನಿಮ್ಮ ಜೂಜಾಟದ ಅನುಭವದ ಬಗ್ಗೆ ಅಥವಾ ಇನ್ನು ಮುಂದೆ ಆಡಬೇಕಾದ ಜೂಜಾಟದ ಬಗ್ಗೆ ಯೋಚನೆ ಮಾಡಿದ್ದೀರಾ?"},"ans":[{"aid":1,"value":"Yes","value_id":1,"next_qid":75},{"aid":2,"value":"No","value_id":0,"next_qid":75}],"section":"GAMBLING"},{"qid":75,"qtype":"num","range":"99","ph":"Enter number","ques":{"english":"In the past 12 months, how many times were you in a violent incident in which you were physically injured?","kannada":" ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ, ನೀವು ಎಷ್ಟು ಬಾರಿ ಹಿಂಸಾತ್ಮಕ ಘಟನೆಯಲ್ಲಿ ಭಾಗಿಯಾಗಿದ್ದೀರಾ  (ಗಾಯಗೊಂಡ ಹಿಂಸಾತ್ಮಕ ಘಟನೆ ಬಗ್ಗೆ ಮಾತ್ರ ತಿಳಿಸಿ)."},"ans":[],"section":"VIOLENCE","next_qid":76},{"qid":76,"qtype":"num","range":"99","ph":"Enter number","ques":{"english":"In the <u>past 12 months, how many times</u> were you in a violent incident in which you were physically injured and required medical attention?","kannada":"ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ, ನೀವು ಎಷ್ಟು ಬಾರಿ ಹಿಂಸಾತ್ಮಕ ಘಟನೆಯಲ್ಲಿ ಭಾಗಿಯಾಗಿದ್ದೀರ ( ಚಿಕಿತ್ಸೆ ಪಡೆಯುವಷ್ಟು ಗಾಯಗೊಂಡ ಹಿಸಾತ್ಮಕ ಘಟನೆ ಬಗ್ಗೆ ಮಾತ್ರ ತಿಳಿಸಿ)?"},"ans":[],"section":"VIOLENCE","next_qid":77},{"qid":77,"qtype":"num","range":"99","ph":"Enter number","ques":{"english":"In the <u>past 12 months, how many times</u> were you in a violent incident with your husband/wife in which you were physically injured?","kannada":"ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ, ನೀವು ಮತ್ತು ನಿಮ್ಮ ಸಂಗಾತಿಯು ಎಷ್ಟು ಬಾರಿ ಜಗಳಮಾಡಿಕೊಂಡಿದ್ದೀರಾ (ಗಾಯ ಗೊಂಡ ಜಗಳದ ಬಗ್ಗೆ ಮಾತ್ರ ತಿಳಿಸಿ)?"},"ans":[],"section":"VIOLENCE","next_qid":78},{"qid":78,"qtype":"num","range":"99","ph":"Enter number","ques":{"english":"In the <u>past 12 months, how many times</u> were you in a violent incident with your husband/wife in which you were physically injured and required medical attention?","kannada":"ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ, ನೀವು ಮತ್ತು ನಿಮ್ಮ ಸಂಗಾತಿಯು ಎಷ್ಟು ಬಾರಿ ಜಗಳಮಾಡಿಕೊಂಡಿದ್ದೀರಾ (ಚಿಕಿತ್ಸೆ ಪಡೆಯುವಷ್ಟು ಗಾಯಗೊಂಡ  ಜಗಳದ ಬಗ್ಗೆ ಮಾತ್ರ ತಿಳಿಸಿ)?"},"ans":[],"section":"VIOLENCE","next_qid":79.1},{"qid":79.1,"qtype":"radio","ques":{"english":"Over the <u>last 2 weeks</u>, how often have little interest or pleasure in doing things?","kannada":"ಕಳೆದ 2 ವಾರದಲ್ಲಿ, ನೀವು ಪದೇ ಪದೇ ಕೆಲಸಗಳನ್ನು ಮಾಡುವುದರಲ್ಲಿ ಕಡಿಮೆ ಆಸಕ್ತಿ ಅಥವ ಆನಂದ ಹೊಂದಿದ್ದೀರಾ?"},"ans":[{"aid":1,"value":"Not at all","value_id":0,"next_qid":79.2},{"aid":2,"value":"Several days","value_id":1,"next_qid":79.2},{"aid":3,"value":"More than half the days","value_id":2,"next_qid":79.2},{"aid":4,"value":"Nearly every day","value_id":3,"next_qid":79.2}],"section":"Depression"},{"qid":79.2,"qtype":"radio","ques":{"english":"Over <u>last 2 weeks</u>, how often have you been bothered by Feeling down, depressed, or hopeless","kannada":"ಕಳೆದ 2 ವಾರದಲ್ಲಿ, ನೀವು ಪದೇ ಪದೇ ಬೇಸರ, ಖಿನ್ನತೆ ಅಥವ ಹತಾಶೆ ಹೊಂದಿದ್ದೀರಾ ?"},"ans":[{"aid":1,"value":"Not at all","value_id":0,"next_qid":79.3},{"aid":2,"value":"Several days","value_id":1,"next_qid":79.3},{"aid":3,"value":"More than half the days","value_id":2,"next_qid":79.3},{"aid":4,"value":"Nearly every day","value_id":3,"next_qid":79.3}],"section":"Depression"},{"qid":79.3,"qtype":"radio","ques":{"english":"Over <u>last 2 weeks</u>, how often have you been bothered by Trouble falling or staying asleep, or sleeping too much","kannada":"ಕಳೆದ 2 ವಾರದಲ್ಲಿ, ನಿಮಗೆ ನಿದ್ರೆ ಬರುವುದು ಅಥವಾ ನಿದ್ರೆಯಲ್ಲಿರುವುದಕ್ಕೆ ತೊಂದರೆ ಅಥವಾ ಅತಿಯಾಗಿ ನಿದ್ರೆ ಮಾಡುವ ತೊಂದರೆ ಆಗಿದೆಯೇ?"},"ans":[{"aid":1,"value":"Not at all","value_id":0,"next_qid":79.4},{"aid":2,"value":"Several days","value_id":1,"next_qid":79.4},{"aid":3,"value":"More than half the days","value_id":2,"next_qid":79.4},{"aid":4,"value":"Nearly every day","value_id":3,"next_qid":79.4}],"section":"Depression"},{"qid":79.4,"qtype":"radio","ques":{"english":"Over the <u>last 2 weeks</u>, how often have you been bothered by Feeling tired or having little energy","kannada":"ಕಳೆದ 2 ವಾರದಲ್ಲಿ, ನಿಮಗೆ ಆಯಾಸಗೊಳ್ಳುವುದು ಅಥವ ಚೈತನ್ಯ ಇಲ್ಲದಿರುವಂತ ಅನುಭವ ಎಷ್ಟುಭಾರಿ ಆಗಿದೆ ?"},"ans":[{"aid":1,"value":"Not at all","value_id":0,"next_qid":79.5},{"aid":2,"value":"Several days","value_id":1,"next_qid":79.5},{"aid":3,"value":"More than half the days","value_id":2,"next_qid":79.5},{"aid":4,"value":"Nearly every day","value_id":3,"next_qid":79.5}],"section":"Depression"},{"qid":79.5,"qtype":"radio","ques":{"english":"Over the <u>last 2 weeks</u>, how often have you been bothered by Poor appetite or overeating","kannada":"ಕಳೆದ 2 ವಾರದಲ್ಲಿ, ನಿಮಗೆ ಕಡಿಮೆ ಹಸಿವು ಅಥವ ಅತಿಯಾಗಿ ತಿನ್ನುವುದರ ಬಗ್ಗೆ ಚಿಂತೆಗೊಂಡಿದ್ದೀರಾ ?"},"ans":[{"aid":1,"value":"Not at all","value_id":0,"next_qid":79.6},{"aid":2,"value":"Several days","value_id":1,"next_qid":79.6},{"aid":3,"value":"More than half the days","value_id":2,"next_qid":79.6},{"aid":4,"value":"Nearly every day","value_id":3,"next_qid":79.6}],"section":"Depression"},{"qid":79.6,"qtype":"radio","ques":{"english":"Over the <u>last 2 weeks</u>, how often have you been bothered by Feeling bad about yourself or that you are a failure or have let yourself or your family down","kannada":"ಕಳೆದ 2 ವಾರದಲ್ಲಿ, ನಿಮಗೆ ಕೆಟ್ಟ ಭಾವನೆ ಅಥವ ನೀವು ವಿಫಲರು ಅಥವ ನೀವು ನಿಮ್ಮ ಹಾಗೂ ಕುಟುಂಬದವರ ನಿರೀಕ್ಷೆಗಿಂತ ಕೆಳಮಟ್ಟದಲ್ಲಿದ್ದೀರಿ ಎಂಬ ಭಾವನೆಯಿಂದ ಚಿಂತೆಗೊಂಡಿದ್ದೀರಾ?"},"ans":[{"aid":1,"value":"Not at all","value_id":0,"next_qid":79.7},{"aid":2,"value":"Several days","value_id":1,"next_qid":79.7},{"aid":3,"value":"More than half the days","value_id":2,"next_qid":79.7},{"aid":4,"value":"Nearly every day","value_id":3,"next_qid":79.7}],"section":"Depression"},{"qid":79.7,"qtype":"radio","ques":{"english":"Over the <u>last 2 weeks</u>, how often have you been bothered by Trouble concentrating on things, such as reading the newspaper or watching television","kannada":"ಕಳೆದ 2 ವಾರದಲ್ಲಿ, ನೀವು ಪತ್ರಿಕೆಯನ್ನು ಓದಲು ಅಥವ ಟೆಲಿವಿಷನ್ ನೋಡುವುದು ಇತ್ಯಾದಿ ವಿಷಯಗಳಲ್ಲಿ ಗಮನ ಕೇಂದ್ರೀಕರಿಸಲು ಆಗುತ್ತಿಲ್ಲ ಎಂದು ಚಿಂತೆಗೊಂಡಿದ್ದೀರಾ ?"},"ans":[{"aid":1,"value":"Not at all","value_id":0,"next_qid":79.8},{"aid":2,"value":"Several days","value_id":1,"next_qid":79.8},{"aid":3,"value":"More than half the days","value_id":2,"next_qid":79.8},{"aid":4,"value":"Nearly every day","value_id":3,"next_qid":79.8}],"section":"Depression"},{"qid":79.8,"qtype":"radio","ques":{"english":"Over the <u>last 2 weeks</u>, how often have you been bothered by Moving or speaking so slowly that other people could have noticed. Or the opposite being so figety or restless that you have been moving around a lot more than usual","kannada":"ಕಳೆದ 2 ವಾರದಲ್ಲಿ, ನಿಮಗೆ ಇತರರ ಗಮನಕ್ಕೆ ಬರುವಷ್ಟು ನಿಧಾನವಾಗಿ ನಡೆದಾಡುವುದು ಅಥವ ಮಾತನಾಡುವುದು? ಅಥವ ತದ್ವಿರುದ್ಧವಾಗಿ ಸಾಮಾನ್ಯಕ್ಕಿಂತ ಹೆಚ್ಚು ಅತ್ತಿಂದಿತ್ತ ಓಡಾಡುವಷ್ಟು ಚಡಪಡಿಕೆ ಅಥವ ಅಶಾಂತಿಯಿಂದಾಗಿ  ಚಿಂತೆಗೊಂಡಿದ್ದೀರಾ?"},"ans":[{"aid":1,"value":"Not at all","value_id":0,"next_qid":79.9},{"aid":2,"value":"Several days","value_id":1,"next_qid":79.9},{"aid":3,"value":"More than half the days","value_id":2,"next_qid":79.9},{"aid":4,"value":"Nearly every day","value_id":3,"next_qid":79.9}],"section":"Depression"},{"qid":79.9,"qtype":"radio","ques":{"english":"Over the <u>last 2 weeks</u>, how often have you been bothered by Thoughts that you would be better off dead, or of hurting yourself","kannada":"ಕಳೆದ 2 ವಾರದಲ್ಲಿ, ನಿಮಗೆ ನಾನು ಸತ್ತರೆ ಚೆನ್ನಾಗಿತ್ತು  ಅಥವ ಯಾವುದಾದರೂ ರೀತಿಯಲ್ಲಿ ನಿಮ್ಮನ್ನು ಹಾನಿಪಡಿಸಿಕೊಳ್ಳುವ ಯೋಚನೆಗಳು ಬಂದಿದ್ದೀಯಾ?"},"ans":[{"aid":1,"value":"Not at all","value_id":0,"next_qid":80.1},{"aid":2,"value":"Several days","value_id":1,"next_qid":80.1},{"aid":3,"value":"More than half the days","value_id":2,"next_qid":80.1},{"aid":4,"value":"Nearly every day","value_id":3,"next_qid":80.1}],"section":"Depression"},{"qid":80.1,"qtype":"radio","ques":{"english":"Over the <u>last 2 weeks</u>, how often have you been bothered by Feeling nervous, anxious, or on edge","kannada":"ಕಳೆದ 2 ವಾರದಲ್ಲಿ, ನಿಮಗೆ ತಳಮಳ, ಆತಂಕ ಅಥವ ಬಹಳ ಕಾತರದ ಅನುಭವ ಎಷ್ಟುಸತಿ ಆಗಿದೆ ?"},"ans":[{"aid":1,"value":"Not at all","value_id":0,"next_qid":80.2},{"aid":2,"value":"Several days","value_id":1,"next_qid":80.2},{"aid":3,"value":"More than half the days","value_id":2,"next_qid":80.2},{"aid":4,"value":"Nearly every day","value_id":3,"next_qid":80.2}],"section":"Anxiety"},{"qid":80.2,"qtype":"radio","ques":{"english":"Over the <u>last 2 weeks</u>, how often have you Not being able to stop or control worrying","kannada":"ಕಳೆದ 2 ವಾರದಲ್ಲಿ, ನಿಮಗೆ ಚಿಂತಿಸುವುದನ್ನು ನಿಲ್ಲಿಸಲು ಅಥವ ನಿಯಂತ್ರಿಸಲು ಸಾಧ್ಯವಾಗದಿರುವುದು ಎಷ್ಟುಸತಿ ಆಗಿದೆ ?"},"ans":[{"aid":1,"value":"Not at all","value_id":0,"next_qid":80.3},{"aid":2,"value":"Several days","value_id":1,"next_qid":80.3},{"aid":3,"value":"More than half the days","value_id":2,"next_qid":80.3},{"aid":4,"value":"Nearly every day","value_id":3,"next_qid":80.3}],"section":"Anxiety"},{"qid":80.3,"qtype":"radio","ques":{"english":"Over the <u>last 2 weeks</u>, how often are you worrying too much about different things","kannada":"ಕಳೆದ 2 ವಾರದಲ್ಲಿ, ನಿಮಗೆ ಬೇರೆ ಬೇರೆ ವಿಷಯಗಳ ಬಗ್ಗೆ ಅತಿಯಾಗಿ ಚಿಂತಿಸುವುದು ಎಷ್ಟುಸತಿ ಆಗಿದೆ ?"},"ans":[{"aid":1,"value":"Not at all","value_id":0,"next_qid":80.4},{"aid":2,"value":"Several days","value_id":1,"next_qid":80.4},{"aid":3,"value":"More than half the days","value_id":2,"next_qid":80.4},{"aid":4,"value":"Nearly every day","value_id":3,"next_qid":80.4}],"section":"Anxiety"},{"qid":80.4,"qtype":"radio","ques":{"english":"Over the <u>last 2 weeks</u>, how often  have you had trouble relaxing","kannada":"ಕಳೆದ 2 ವಾರದಲ್ಲಿ, ನಿಮಗೆ ನಿರಾಳವಾಗಿರಲು ತೊಂದರೆ ಎಷ್ಟುಸತಿ ಆಗಿದೆ?"},"ans":[{"aid":1,"value":"Not at all","value_id":0,"next_qid":80.5},{"aid":2,"value":"Several days","value_id":1,"next_qid":80.5},{"aid":3,"value":"More than half the days","value_id":2,"next_qid":80.5},{"aid":4,"value":"Nearly every day","value_id":3,"next_qid":80.5}],"section":"Anxiety"},{"qid":80.5,"qtype":"radio","ques":{"english":"Over the <u>last 2 weeks</u> how often  have you been so restless that it is hard to sit still","kannada":"ಕಳೆದ 2 ವಾರದಲ್ಲಿ, ನಿಮಗೆ ಒಂದು ಕಡೆ ಸ್ಥಿರವಾಗಿ ಕುಳಿತುಕೊಳ್ಳಲು ಆಗದಷ್ಟು ಚಡಪಡಿಸುವುದು ಎಷ್ಟುಸತಿ ಆಗಿದೆ ?"},"ans":[{"aid":1,"value":"Not at all","value_id":0,"next_qid":80.6},{"aid":2,"value":"Several days","value_id":1,"next_qid":80.6},{"aid":3,"value":"More than half the days","value_id":2,"next_qid":80.6},{"aid":4,"value":"Nearly every day","value_id":3,"next_qid":80.6}],"section":"Anxiety"},{"qid":80.6,"qtype":"radio","ques":{"english":"Over the <u>last 2 weeks</u> how often  have you been easily annoyed or irritable","kannada":"ಕಳೆದ 2 ವಾರದಲ್ಲಿ, ನಿಮಗೆ ಸುಲಭವಾಗಿ ಕೋಪಗೊಳ್ಳುವುದು ಅಥವ ಕಿರಿಕಿರಿಯಾಗುವುದು ಎಷ್ಟುಸತಿ ಆಗಿದೆ ?"},"ans":[{"aid":1,"value":"Not at all","value_id":0,"next_qid":80.7},{"aid":2,"value":"Several days","value_id":1,"next_qid":80.7},{"aid":3,"value":"More than half the days","value_id":2,"next_qid":80.7},{"aid":4,"value":"Nearly every day","value_id":3,"next_qid":80.7}],"section":"Anxiety"},{"qid":80.7,"qtype":"radio","ques":{"english":"Over the <u>last 2 weeks</u> how often  have you felt afraid as if something awful might happen","kannada":"ಕಳೆದ 2 ವಾರದಲ್ಲಿ, ನಿಮಗೆ ಏನಾದರೂ ಅನಾಹುತ ಸಂಭವಿಸುತ್ತದೆ ಎಂದು ಹೆದರುವುದು ಎಷ್ಟುಸತಿ ಆಗಿದೆ ?"},"ans":[{"aid":1,"value":"Not at all","value_id":0,"next_qid":81},{"aid":2,"value":"Several days","value_id":1,"next_qid":81},{"aid":3,"value":"More than half the days","value_id":2,"next_qid":81},{"aid":4,"value":"Nearly every day","value_id":3,"next_qid":8}],"section":"Anxiety"},{"qid":81,"qtype":"num","range":"99","ph":"Enter number","ques":{"english":"In the <b>last 12 months</b> how many times have you seriously considered committing suicide?","kannada":"ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ, ನೀವು ಆತ್ಮಹತ್ಯೆ ಮಾಡಿಕೊಳ್ಳುವ ಬಗ್ಗೆ ಎಷ್ಟು ಬಾರಿ ಗಂಭೀರವಾಗಿ ಯೋಚಿಸಿದ್ದೀರಾ?"},"ans":[],"section":"Suicidal Behavior","next_qid":82},{"qid":82,"qtype":"num","range":"99","ph":"Enter number","ques":{"english":"In the <b>last 12 months</b> how many times have you made a plan about how to commit suicide?","kannada":"ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ, ಹೇಗೆ ಆತ್ಮಹತ್ಯೆ  ಮಾಡಿಕೊಳ್ಳಬೇಕೆಂದು ನೀವು ಎಷ್ಟುಬಾರಿ ಯೋಚನೆ (ಪ್ಲ್ಯಾನ್ ) ಮಾಡಿದ್ದೀರಾ ?"},"ans":[],"section":"Suicidal Behavior","next_qid":83},{"qid":83,"qtype":"num","range":"99","ph":"Enter number","ques":{"english":"In the <b>last 12 months</b> how many times have you attempted suicide?","kannada":"ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ, ಆತ್ಮಹತ್ಯೆ ಮಾಡಿಕೊಳ್ಳಲು ನೀವು ಎಷ್ಟುಬಾರಿ ಪ್ರಯತ್ನಿಸಿದ್ದೀರಿ?"},"ans":[],"section":"Suicidal Behavior","next_qid":84},{"qid":84,"qtype":"radio","ques":{"english":"By which of the following methods did you attempt suicide","kannada":"ಈ ಕೆಳಗಿನ ಯಾವ ವಿಧಾನದ ಮೂಲಕ ನೀವು ಆತ್ಮಹತ್ಯೆ ಮಾಡಿಕೊಳ್ಳಲು ಪ್ರಯತ್ನಿಸಿದ್ದೀರಿ? "},"ans":[{"aid":1,"value":"Razor, knife or other sharp instrument","value_id":1,"next_qid":85},{"aid":2,"value":"Overdose of medication (e. g. prescribed, over the-counter)","value_id":2,"next_qid":85},{"aid":3,"value":"Poisoning with pesticides","value_id":3,"next_qid":85},{"aid":4,"value":"hanging","value_id":4,"next_qid":85},{"aid":5,"value":"Jumping into water body","value_id":5,"next_qid":85},{"aid":6,"value":"Others","value_id":96,"next_qid":85}],"section":"Suicidal Behavior"},{"qid":85,"qtype":"num","range":"99","ph":"Enter number","ques":{"english":"In the <b>last 12 months</b> how many times have you intentionally hurt yourself but without the intention of committing suicide?","kannada":"ಆತ್ಮಹತ್ಯೆ ಮಾಡಿಕೊಳ್ಳುವ ಉದ್ದೇಶ ಇಲ್ಲದಿದ್ದರು ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ ಎಷ್ಟುಬಾರಿ ನಿಮಗೆ ನೀವೆ ಗಾಯ ಮಾಡಿಕೊಂಡಿದ್ದೀರಾ?"},"ans":[],"section":"Non suicidal self-injury","next_qid":86},{"qid":86,"qtype":"text","ph":"Enter information separated by commas","ques":{"english":"What method/s did you follow to intentionally hurt yourself?","kannada":"ನಿಮ್ಮನ್ನು ಉದ್ದೇಶಪೂರ್ವಕವಾಗಿ ನೋಯಿಸಿಕೊಳ್ಳಲು ಯಾವ ವಿಧಾನವನ್ನು ನೀವು ಪಾಲಿಸಿದ್ದೀರಾ?"},"ans":[],"section":"Non suicidal self-injury","next_qid":87},{"qid":87,"qtype":"num","range":"10","ph":"Enter number","ques":{"english":"In the <b>last 10 times</b> when you drove 2 wheeler how many times did you wear the Helmet? ","kannada":"ಕಳೆದ 10 ಸತಿ ದ್ವಿಚಕ್ರ ವಾಹನ ಓಡಿಸಿದಾಗ ಎಷ್ಟು ಬಾರಿ ಹೆಲ್ಮೆಟ್ ಹಾಕಿಕೊಂಡು ಓಡಿಸಿದ್ದೀರಾ?"},"ans":[],"section":"Road Behavior and Injury","next_qid":88},{"qid":88,"qtype":"num","range":"10","ph":"Enter number","next_qid":89,"ques":{"english":"In the <b>last 10 times</b> when you travelled as a pillion rider in a 2 wheeler how many times did you wear the Helmet? ","kannada":"ಕಳೆದ 10 ಸತಿ ದ್ವಿಚಕ್ರ ವಾಹನದಲ್ಲಿ ಹಿಂಬದಿ ಕುಳಿತು ಪ್ರಯಾಣಿಸಿದಾಗ ಎಷ್ಟು ಬಾರಿ ಹೆಲ್ಮೆಟ್ ಹಾಕಿಕೊಂಡಿದ್ದೀರಾ?"},"ans":[],"section":"Road Behavior and Injury"},{"qid":89,"qtype":"num","range":"10","ph":"Enter number","next_qid":90,"ques":{"english":"In the <b>last 10 times</b> when you were the driver or passenger in a car, how many times did you use seat belt","kannada":"ಕಳೆದ 10 ಬಾರಿ ಕಾರು ಓಡಿಸಿದಾಗ / ಪ್ರಯಾಣಿಸಿದಾಗ ಎಷ್ಟು ಬಾರಿ ಸೀಟ್ ಬೆಲ್ಟ್ ಹಾಕಿದ್ದೀರಾ ?"},"ans":[],"section":"Road Behavior and Injury"},{"qid":90,"qtype":"num","range":"999","ph":"Enter number","next_qid":90.1,"ques":{"english":"In the <u>past 12 months</u> how many times have you driven two wheeler after consuming alcohol?  ","kannada":"ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ, ಎಷ್ಟು ಬಾರಿ ನೀವು ಕುಡಿದು / ಮಧ್ಯಪಾನಮಾಡಿ ದ್ವಿಚಕ್ರವಾಹನ ಓಡಿಸಿದ್ದೀರಾ ?"},"ans":[],"section":"Road Behavior and Injury"},{"qid":90.1,"qtype":"num","range":"999","ph":"Enter number","next_qid":91,"ques":{"english":"In the <u>past 12 months</u> how many times have you driven a car or heavy vehicle after consuming alcohol?  ","kannada":"ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ, ಎಷ್ಟು ಬಾರಿ ನೀವು ಕುಡಿದು / ಮಧ್ಯಪಾನಮಾಡಿ ಕಾರು ಅಥವಾ ಭಾರಿವಾಹನವನ್ನು ಓಡಿಸಿದ್ದೀರಾ  ?"},"ans":[],"section":"Road Behavior and Injury"},{"qid":91,"qtype":"num","range":"999","ph":"Enter number","next_qid":92,"ques":{"english":"In the <u>past 12 months</u> how many times have you participated in a Drag racing / Vehicle Racing (Drag racing is a type of motor racing in which automobiles or motorcycles compete, to be first to cross a set finish line. The race follows a short, straight course from a standing start over a measured distance) ","kannada":"ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ, ಎಷ್ಟು ಬಾರಿ ನೀವು ಡ್ರ್ಯಾಗ್ ರೇಸ್ ಅಥವ ಮೋಟಾರ್ ಗಾಡಿ ರೇಸ್  ಮಾಡಿದ್ದೀರಾ?"},"ans":[],"section":"Road Behavior and Injury"},{"qid":92,"qtype":"num","range":"10","ph":"Enter number","next_qid":93,"ques":{"english":"In the <u>past 10 times</u> when you drove motorized vehicle how many times did you talk on mobile phone ?","kannada":"ಕಳೆದ 10 ಬಾರಿ ಗಾಡಿ ಓಡಿಸಿದಾಗ ಎಷ್ಟುಬಾರಿ ಮೊಬೈಲ್ ಫೋನ್ ಬಳಕೆ ಮಾಡಿದ್ದೀರಾ?"},"ans":[],"section":"Road Behavior and Injury"},{"qid":93,"qtype":"num","range":"999","ph":"Enter number","next_qid":94,"ques":{"english":"In the past 12 months, how many times  have you been fined by traffic police for over speeding ?  ","kannada":"ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ, ಎಷ್ಟು ಬಾರಿ ನೀವು ವೇಗವಾಗಿ ಗಾಡಿ ಓಡಿಸಿದಕ್ಕಾಗಿ ಪೊಲೀಸರಿಗೆ ದಂಡ / ಪೈನ್ ಕಟ್ಟಿದ್ದೀರಾ ?"},"ans":[],"section":"Road Behavior and Injury"},{"qid":94,"qtype":"num","range":"99","ph":"Enter data","ques":{"english":"In the <u>past 12 months</u>, how many times you been involved in a road traffic crash as a driver, passenger, pedestrian, or cyclist?","kannada":"ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ, ಎಷ್ಟು ಬಾರಿ ರಸ್ತೆ ಅಪಘಾತಕ್ಕೆ ಒಳಗಾಗಿದ್ದೀರಾ ?"},"ans":[],"section":"Road Behavior and Injury","next_qid":95},{"qid":95,"qtype":"num","range":"99","ph":"Enter number","ques":{"english":"How many times were you injured in this road traffic crash which required medical attention?","kannada":"ಈ ಅಪಘಾತಗಳಲ್ಲಿ ನಿಮಗೆ ಎಷ್ಟು ಬಾರಿ ವೈದ್ಯಕೀಯ ಚಿಕಿತ್ಸೆ ಪಡೆಯುವಷ್ಟು ಗಾಯಗೊಂಡಿದ್ದೀರಾ ?"},"ans":[],"section":"Road Behavior and Injury","next_qid":96},{"qid":96,"qtype":"num","range":"999","ph":"Enter number","next_qid":97,"ques":{"english":"How many times did you have any injuries in this road traffic crash which required admission (for more than 24 hours) to health care facility?","kannada":"ಈ ಅಪಘಾತದಲ್ಲಿ ನಿಮಗೆ ಎಷ್ಟುಬಾರಿ ಆಸ್ಪತ್ರೆಯಲ್ಲಿ ಅಡ್ಮಿಟ್ ಆಗುವಷ್ಟು (ಕನಿಷ್ಠ 24 ಗಂಟೆ) ಗಾಯಗೊಂಡಿದ್ದೀರಾ  ?"},"ans":[],"section":"Road Behavior and Injury"},{"qid":97,"qtype":"num","range":"99","ph":"Enter data","ques":{"english":"How many days where you admitted in the health care facility?","kannada":" ರಸ್ತೆ ಅಪಘಾತದ  ಗಾಯದಿಂದ ನೀವು ಆಸ್ಪತ್ರೆಗೆ ದಾಖಲಾಗಿ ಎಷ್ಟುದಿನಗಳು ಚಿಕಿತ್ಸೆ ಪಡೆದುಕೊಂಡಿದ್ದೀರಾ?"},"ans":[],"section":"Road Behavior and Injury","next_qid":98.1},{"qid":98.1,"qtype":"num","range":"99","ph":"Enter number","ques":{"english":"In the <u>past 12 months</u>, how many times did you have an unintentional <u>fall injury</u> which required medical attention?","kannada":"ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ, ನೀವು ಎಷ್ಟು ಬಾರಿ ಅಕಸ್ಮಾತಾಗಿ ಬಿದ್ದು ಚಿಕಿತ್ಸೆ ಪಡೆಯುವಷ್ಟು ಗಂಭೀರವಾಗಿ ಗಾಯಗೊಂಡಿದ್ದೀರಿ?"},"ans":[],"section":"Road Behavior and Injury","next_qid":98.2},{"qid":98.2,"qtype":"num","range":"99","ph":"Enter number","ques":{"english":"In the <u>past 12 months</u>, how many times did have an unintentional <b>burn injury</u> which required medical attention?","kannada":"ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ, ನೀವು ಎಷ್ಟು ಬಾರಿ ಅಕಸ್ಮಾತಾಗಿ ಬೆಂಕಿ ಅವಘಡಕ್ಕೆ ಸಿಕ್ಕಿ ಚಿಕಿತ್ಸೆ ಪಡೆಯುವಷ್ಟು ಗಂಭೀರವಾಗಿ ಗಾಯಗೊಂಡಿದ್ದೀರಿ?"},"ans":[],"section":"Road Behavior and Injury","next_qid":98.3},{"qid":98.3,"qtype":"num","range":"99","ph":"Enter number","ques":{"english":"In the <u>past 12 months</u>, how many times did have an unintentional <b>poisoning</b>  which required medical attention?","kannada":"ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ, ನೀವು ಎಷ್ಟು ಬಾರಿ ಅಕಸ್ಮಾತಾಗಿ  ಚಿಕಿತ್ಸೆ ಪಡೆಯುವಷ್ಟು ವಿಷಸೇವನೆ ಮಾಡಿದ್ದೀರಾ ?"},"ans":[],"section":"Road Behavior and Injury","next_qid":98.4},{"qid":98.4,"qtype":"num","range":"99","ph":"Enter number","ques":{"english":"In the <u>past 12 months</u>, how many times did have an unintentional <b>cut injury</b> which required medical attention?","kannada":"ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ, ನೀವು ಎಷ್ಟು ಬಾರಿ ಅಕಸ್ಮಾತಾಗಿ ಕತ್ತರಿಸಿಕೊಂಡ  ಗಾಯಗಳಿಂದಾಗಿ ಚಿಕಿತ್ಸೆ ಪಡೆಯುವಷ್ಟು ಗಾಯಗೊಂಡಿದ್ದೀರಾ ?"},"ans":[],"section":"Road Behavior and Injury","next_qid":98.5},{"qid":98.5,"qtype":"num","range":"99","ph":"Enter number","ques":{"english":"In the <u>past 12 months</u>, how many times did have an unintentional <u>near drowning injury</u> which required medical attention?","kannada":"ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ, ನೀವು ಎಷ್ಟು ಬಾರಿ ಅಕಸ್ಮಾತಾಗಿ ನೀರಿನಲ್ಲಿ ಮುಳುಗುವಂಥಾ ಸ್ಥಿತಿಯಿಂದಾಗಿ ಚಿಕಿತ್ಸೆ ಪಡೆದಿದ್ದೀರಿ ?"},"ans":[],"section":"Road Behavior and Injury","next_qid":98.6},{"qid":98.6,"qtype":"num","range":"99","ph":"Enter number","ques":{"english":"In the <u>past 12 months</u>, how many times did have an unintentional <u>animal bite injury</u> which required medical attention?","kannada":"ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ, ನೀವು ಎಷ್ಟು ಬಾರಿ ಅಕಸ್ಮಾತಾಗಿ ಯಾವುದಾದರೂ ಪ್ರಾಣಿಯಿಂದ ಕಚ್ಚಿಸಿಕೊಂಡಿದ್ದ ಕಾರಣದಿಂದಾಗಿ ಚಿಕಿತ್ಸೆ ಪಡೆದಿದ್ದೀರಿ ?"},"ans":[],"section":"Road Behavior and Injury","next_qid":99.1},{"qid":99.1,"qtype":"num_na","range":"1440","ph":"In Minutes","ques":{"english":"<u>In a typical day</u>, How much time do you spend using  using cell phone/smart phone?","kannada":"ಒಂದು ಸಾಮಾನ್ಯ ದಿನದಲ್ಲಿ  ಎಷ್ಟು ಸಮಯ ಸೆಲ್ ಫೋನ್ / ಸ್ಮಾರ್ಟ್ ಫೋನ್  ಬಳಸುತ್ತೀರಾ?"},"ans":[],"section":"TECHNOLOGY USE","next_qid":99.2},{"qid":99.2,"qtype":"num_na","range":"1440","ph":"In Minutes","ques":{"english":"<u>In a typical day</u>, How much time do you spend using Computer/Laptop?","kannada":"ಒಂದು ಸಾಮಾನ್ಯ ದಿನದಲ್ಲಿ ನೀವು ಎಷ್ಟು ಸಮಯ ಕಂಪ್ಯೂಟರ್ ಅಥವಾ ಲ್ಯಾಪ್ ಟಾಪ್ ಉಪಯೋಗಿಸುತ್ತೀರಾ?"},"ans":[],"section":"TECHNOLOGY USE","next_qid":99.3},{"qid":99.4,"qtype":"num_na","range":"1440","ph":"In Minutes","ques":{"english":"<u>In a typical day</u>, How much time do you spend using using Internet?","kannada":"ಒಂದು ಸಾಮಾನ್ಯ ದಿನದಲ್ಲಿ ನೀವು ಎಷ್ಟು ಸಮಯ ಇಂಟರ್ನೆಟ್ ಉಪಯೋಗಿಸುತ್ತೀರಿ?"},"ans":[],"section":"TECHNOLOGY USE","next_qid":99.5},{"qid":99.5,"qtype":"num_na","range":"1440","ph":"In Minutes","ques":{"english":"<u>In a typical day</u>, how much time do you spend using  using Social networking sites (like face book, whatsapp, twitter, instagram, Linkedln etc) ?","kannada":"ಒಂದು ಸಾಮಾನ್ಯ ದಿನದಲ್ಲಿ ನೀವು ಎಷ್ಟು ನಿಮಿಷಗಳ ಕಾಲ ಸಾಮಾಜಿಕ ಜಾಲತಾಣಗಳಲ್ಲಿ ಕಳೆಯುತ್ತೀರಿ (ವಾಟ್ಸಾಪ್, ಯೂಟೂಬ್, ಟ್ವಿಟ್ಟರ್, ಇನ್ಸ್ಟಾಗ್ರಾಮ್, ಫೇಸ್ ಬುಕ್)?"},"ans":[],"section":"TECHNOLOGY USE","next_qid":99.6},{"qid":99.6,"qtype":"num_na","range":"1440","ph":"In Minutes","ques":{"english":"<u>In a typical day</u>, how much time do you spend using  playing Video games (in cell phone/smart phone/computer/laptop) ?","kannada":"ಒಂದು ಸಾಮಾನ್ಯ ದಿನದಲ್ಲಿ ನೀವು ಎಷ್ಟು ನಿಮಿಷಗಳ ಕಾಲ ವೀಡಿಯೋ ಗೇಮ್  (ಫೋನಿನಲ್ಲಿ, ಸ್ಮಾರ್ಟ್ ಫೋನ್ / ಕಂಪ್ಯೂಟರ್ ಅಥವಾ ಲ್ಯಾಪ್ ಟಾಪ್ ನಲ್ಲಿ) ಆಡುತ್ತೀರಾ ?"},"ans":[],"section":"TECHNOLOGY USE","next_qid":99.7},{"qid":99.7,"qtype":"num_na","range":"1440","ph":"In Minutes","ques":{"english":"<u>In a typical day</u>, how much time do you spend using watching TV ?","kannada":"ಒಂದು ಸಾಮಾನ್ಯ ದಿನದಲ್ಲಿ ನೀವು ಎಷ್ಟು ಸಮಯ ಟಿವಿ ನೋಡುತ್ತೀರಾ ?"},"ans":[],"section":"TECHNOLOGY USE","next_qid":100},{"qid":100,"qtype":"radio","ques":{"english":"What is the most common purpose of your internet use?","kannada":"ನೀವು ಮುಖ್ಯವಾಗಿ ಯಾವ ಕಾರಣಕ್ಕಾಗಿ ಇಂಟರ್ನೆಟ್ ಅನ್ನು ಉಪಯೋಗಿಸುತ್ತೀರಾ ?"},"ans":[{"aid":1,"value":"Education","value_id":1,"next_qid":101},{"aid":2,"value":"Work related","value_id":2,"next_qid":101},{"aid":3,"value":"Entertainment","value_id":3,"next_qid":101},{"aid":4,"value":"Shopping","value_id":4,"next_qid":101},{"aid":5,"value":"Chatting","value_id":5,"next_qid":101},{"aid":6,"value":"Others","value_id":6,"next_qid":101},{"aid":7,"value":"Not Applicable","value_id":77,"next_qid":101}],"section":"TECHNOLOGY USE"},{"qid":101,"qtype":"radio","ques":{"english":"Do you have access to mobile phone? ","kannada":"ನೀವು ಮೊಬೈಲ್ ಫೋನ್ ಉಪಯೋಗಿಸುತ್ತೀರಾ?"},"ans":[{"aid":1,"value":"Yes","value_id":1,"next_qid":101.1},{"aid":2,"value":"No","value_id":0,"next_qid":102}],"section":"TECHNOLOGY USE"},{"qid":101.1,"qtype":"radio","ques":{"english":"Do you feel the need to talk or SMS on the phone <u>almost all the time?</u> ","kannada":"ನಿಮಗೆ ಯಾವಾಗಲೂ ಮೊಬೈಲ್ ಫೋನ್ ನಲ್ಲಿ ಮಾತಾಡಬೇಕು/ಮೆಸೇಜ್ ಮಾಡಬೇಕು ಅಂತ ಅನಿಸುತ್ತದೆಯೇ?"},"ans":[{"aid":1,"value":"Almost always","value_id":1,"next_qid":101.2},{"aid":2,"value":"Most of the time","value_id":2,"next_qid":101.2},{"aid":3,"value":"Sometimes","value_id":3,"next_qid":101.2},{"aid":4,"value":"Not at all","value_id":4,"next_qid":101.2}],"section":"TECHNOLOGY USE"},{"qid":101.2,"qtype":"radio","ques":{"english":"Has there been a </u>steady increase in the frequency of phone recharge and amount?</u> ","kannada":"ಎಷ್ಟು ಸರಿ ಫೋನ್ ರೀಚಾರ್ಜ್ ಮಾಡುತ್ತೀರಾ ಮತ್ತು ಎಷ್ಟು ದುಡ್ಡು ಆಕಿ ರೀಚಾರ್ಜ್ ಮಾಡುತ್ತೀರಾ -ಇದು ದಿನೆ ದಿನೆ ಜಾಸ್ತಿ ಆಗ್ತಾಯಿದಿಯಾ?"},"ans":[{"aid":1,"value":"Almost always","value_id":1,"next_qid":101.3},{"aid":2,"value":"Most of the time","value_id":2,"next_qid":101.3},{"aid":3,"value":"Sometimes","value_id":3,"next_qid":101.3},{"aid":4,"value":"Not at all","value_id":4,"next_qid":101.3}],"section":"TECHNOLOGY USE"},{"qid":101.3,"qtype":"radio","ques":{"english":"Have you ever been teased or scolded because you had your cell phone ON even in cell phone restricted activities and situations (at meetings, while exercising, at the cinema) ","kannada":"ಮೊಬೈಲ್ ಫೋನ್ ನಿಷೇಧಿಸಿದ ಜಾಗದಲ್ಲಿ ನೀವು ಮೊಬೈಲ್ ಫೋನ್ ಬಳಕೆ ಮಾಡಿದ್ದರಿಂದ ನಿಮ್ಮನ್ನು ಯಾರಾದರೂ ಟೀಕಿಸಿದ್ದಾರೆಯೇ ಅಥವ ಬೈದಿದ್ದಾರಾ?"},"ans":[{"aid":1,"value":"Almost always","value_id":1,"next_qid":101.4},{"aid":2,"value":"Most of the time","value_id":2,"next_qid":101.4},{"aid":3,"value":"Sometimes","value_id":3,"next_qid":101.4},{"aid":4,"value":"Not at all","value_id":4,"next_qid":101.4}],"section":"TECHNOLOGY USE"},{"qid":101.4,"qtype":"radio","ques":{"english":"Do you have your cell phone close to you always—even when you are not expecting an important call/text message? ","kannada":"ನೀವು ಯಾವುದೇ ಮುಖ್ಯವಾದ ಕರೆ / ಸಂದೇಶವನ್ನು ನಿರೀಕ್ಷಿಸದೆ ಇದ್ದ ಸಮಯದಲ್ಲೂ ಕೂಡ ಮೊಬೈಲ್ ಅನ್ನು ನಿಮ್ಮೊಡನೆಯೇ ಇಟ್ಟುಕೊಂಡಿರುತ್ತೀರಾ ?"},"ans":[{"aid":1,"value":"Almost always","value_id":1,"next_qid":101.5},{"aid":2,"value":"Most of the time","value_id":2,"next_qid":101.5},{"aid":3,"value":"Sometimes","value_id":3,"next_qid":101.5},{"aid":4,"value":"Not at all","value_id":4,"next_qid":101.5}],"section":"TECHNOLOGY USE"},{"qid":101.5,"qtype":"radio","ques":{"english":"Do you invariably feel anxious <u>if you are not able to use your Cell Phone?</u> (such as in meetings, on a flight, in class or in a place of worship) ","kannada":"ನೀವು ಮೊಬೈಲ್ ಫೋನ್ ಉಪಯೋಗಿಸಬಾರದಂತಹ ಜಾಗ / ಸಂದರ್ಭದಲ್ಲಿ ಮೊಬೈಲ್ ಬಸಲಾಗುತ್ತಿಲ್ಲಾ ಎಂದು ಆತಂಕಕ್ಕೆ ಒಳಗಾಗಿದ್ದೀರಾ? (ಸಭೆಗಳು, ವಿಮಾನದಲ್ಲಿ, ತರಗತಿ, ಕೆಲಸದಲ್ಲಿ)?"},"ans":[{"aid":1,"value":"Almost always","value_id":1,"next_qid":101.6},{"aid":2,"value":"Most of the time","value_id":2,"next_qid":101.6},{"aid":3,"value":"Sometimes","value_id":3,"next_qid":101.6},{"aid":4,"value":"Not at all","value_id":4,"next_qid":101.6}],"section":"TECHNOLOGY USE"},{"qid":101.6,"qtype":"radio","ques":{"english":"Do you feel uncomfortable and restless when you are not using your cell phone or it is unavailable? ","kannada":"ನಿಮ್ಮ ಬಳಿ ಫೋನ್ ಇಲ್ಲದಿದ್ದಾಗ ನಿಮಗೆ ಅನಾನುಕೂಲ ದಂತಹ / ಆತಂಕ ಭಾವನೆ ಉಂಟಾಗುತ್ತದ?"},"ans":[{"aid":1,"value":"Almost always","value_id":1,"next_qid":102},{"aid":2,"value":"Most of the time","value_id":2,"next_qid":102},{"aid":3,"value":"Sometimes","value_id":3,"next_qid":102},{"aid":4,"value":"Not at all","value_id":4,"next_qid":102}],"section":"TECHNOLOGY USE"},{"qid":102,"qtype":"time","ques":{"english":"In the <u>past 30 days</u>, usually at what time did you go to sleep at night  ?","kannada":"ಕಳೆದ 30 ದಿನಗಳಲ್ಲಿ, ಸಾಮಾನ್ಯವಾಗಿ ರಾತ್ರಿ ಎಷ್ಟು ಗಂಟೆಗೆ ನಿದ್ರೆ ಮಾಡುತ್ತಿದ್ರಿ?"},"ans":[],"section":"Sleep","next_qid":103},{"qid":103,"qtype":"time","ques":{"english":"In the <u>past 30 days</u>, usually at what time did you get up from sleep in the morning ","kannada":"ಕಳೆದ 30 ದಿನಗಳಲ್ಲಿ, ಸಾಮಾನ್ಯವಾಗಿ ಬೆಳಿಗ್ಗೆ ಎಷ್ಟು ಗಂಟೆಗೆ ನಿದ್ದೆಯಿಂದ ಎಚ್ಚರವಾಗುತ್ತಿದ್ರಿ?"},"ans":[],"section":"Sleep","next_qid":104},{"qid":104,"qtype":"num","range":"99","ph":"Number of days","ques":{"english":"During the <u>past 30 days</u>, for about how many days have you felt you did not get enough sleep? (number of days)? ","kannada":"ಕಳೆದ 30 ದಿನಗಳಲ್ಲಿ, ನಿಮಗೆ ಎಷ್ಟು ದಿನಗಳು ಸಾಕಷ್ಟು ನಿದ್ರೆ ಆಗಿಲ್ಲ ಅಂತ ಅನಿಸಿತ್ತು?"},"ans":[],"section":"Sleep","next_qid":106},{"qid":106,"qtype":"num","range":"99","ph":"Number of days","ques":{"english":"During the <u>past 30 days</u>, for about how many days have you felt not refreshing after overnight sleep (number of days)? ","kannada":"ಕಳೆದ 30 ದಿನಗಳಲ್ಲಿ, ನಿಮಗೆ ರಾತ್ರಿ ನಿದ್ರೆ ಆದಮೇಲೂ ಸಹ ಸರಿಯಾಗಿ ನಿದ್ರೆ ಆಗಿಲ್ಲ ಎಂದು ಎಷ್ಟು ದಿನ ಅನಿಸಿದೆ ?"},"ans":[],"section":"Sleep","next_qid":107},{"qid":107,"qtype":"num","range":"99","ph":"Number of days","ques":{"english":"In the <u>past 12 months</u>, how many times were you hospitalised (for more than 24 hours) for any health-related issues? ","kannada":"ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ, ಆರೋಗ್ಯದ ತೊಂದರೆಯಿಂದ ಎಷ್ಟುಬಾರಿ ಆಸ್ಪತ್ರೆಗೆ ಅಡ್ಮಿಟ್ ಆಗಿದ್ದೀರ? (ಕನಿಷ್ಠ 24 ಗಂಟೆಗಳ ಕಾಲ)?"},"ans":[],"section":"Health and health seeking behavior","next_qid":108},{"qid":108,"qtype":"num","range":"99","ph":"Number of times","ques":{"english":"In the </u>past 6 months</u> how often did you visit/consult a doctor (Allopathic or AYUSH) for any health-related issues?","kannada":"ಕಳೆದ 6 ತಿಂಗಳಲ್ಲಿ, ಆರೋಗ್ಯದ ಸಮಸ್ಯೆಯಿಂದಾಗಿ ನೀವು ಎಷ್ಟುಬಾರಿ ವೈದ್ಯರನ್ನು ಬೇಟಿಮಾಡಿದ್ದೀರಾ?"},"ans":[],"section":"Health and health seeking behavior","next_qid":109.1},{"qid":109.1,"qtype":"radio","ques":{"english":"Are you currently diagnosed with <u>Hypertension</u>? ","kannada":"ಬಿ ಪಿ ಖಾಯಿಲೆ ?"},"ans":[{"aid":1,"value":"Yes","value_id":1,"next_qid":109.2},{"aid":2,"value":"No","value_id":0,"next_qid":109.2}],"section":"Health and health seeking behavior"},{"qid":109.2,"qtype":"radio","ques":{"english":"Are you currently diagnosed with <u>Diabetes?</u> ","kannada":"ಸಕ್ಕರೆ  ಖಾಯಿಲೆ ?"},"ans":[{"aid":1,"value":"Yes","value_id":1,"next_qid":109.3},{"aid":2,"value":"No","value_id":0,"next_qid":109.3}],"section":"Health and health seeking behavior"},{"qid":109.3,"qtype":"radio","ques":{"english":"Are you currently diagnosed with <u>Thyroid Disorder?</u> ","kannada":"ಥೈರಾಯ್ಡ್  ಖಾಯಿಲೆ?"},"ans":[{"aid":1,"value":"Yes","value_id":1,"next_qid":109.4},{"aid":2,"value":"No","value_id":0,"next_qid":109.4}],"section":"Health and health seeking behavior"},{"qid":109.4,"qtype":"radio","ques":{"english":"Are you currently diagnosed with <u>Cardiac Disorder?</u> ","kannada":"ಹೃದಯದ ಸಮಸ್ಯೆ?"},"ans":[{"aid":1,"value":"Yes","value_id":1,"next_qid":109.5},{"aid":2,"value":"No","value_id":0,"next_qid":109.5}],"section":"Health and health seeking behavior"},{"qid":109.5,"qtype":"radio","ques":{"english":"Are you currently diagnosed with <u>Stroke?</u> ","kannada":"ಲಕ್ವ?"},"ans":[{"aid":1,"value":"Yes","value_id":1,"next_qid":109.6},{"aid":2,"value":"No","value_id":0,"next_qid":109.6}],"section":"Health and health seeking behavior"},{"qid":109.6,"qtype":"radio","ques":{"english":"Are you currently diagnosed with <u>Cancer?</u> ","kannada":"ಕ್ಯಾನ್ಸರ್ ?"},"ans":[{"aid":1,"value":"Yes","value_id":1,"next_qid":109.7},{"aid":2,"value":"No","value_id":0,"next_qid":109.7}],"section":"Health and health seeking behavior"},{"qid":109.7,"qtype":"radio","ques":{"english":"Are you currently diagnosed with <u>Mental Health Problems (like depression, anxiety etc?)</u> ","kannada":"ಮಾನಸಿಕ ಆರೋಗ್ಯ ಸಮಸ್ಯೆಗಳು (ಖಿನ್ನತೆ, ಆತಂಕ ಇತ್ಯಾದಿ)?"},"ans":[{"aid":1,"value":"Yes","value_id":1,"next_qid":110},{"aid":2,"value":"No","value_id":0,"next_qid":110}],"section":"Health and health seeking behavior"},{"qid":110,"qtype":"num","range":"30","ph":"Number of days","ques":{"english":"<u>Thinking about your physical health</u>, which includes physical illness and injury, for how many days during the <u>past 30 day was your physical health not good?</u> ","kannada":"ಕಳೆದ 30 ದಿನಗಳಲ್ಲಿ, ಎಷ್ಟು ದಿನ ನಿಮ್ಮ ದೈಹಿಕ ಆರೋಗ್ಯ ಸರಿಯಿಲ್ಲವೆಂದು ಅನಿಸಿದೆ ?"},"ans":[],"section":"Health and health seeking behavior","next_qid":111},{"qid":111,"qtype":"num","range":"30","ph":"Number of days","ques":{"english":"<u>Thinking about your physical health</u>, for how many days during the <u>past 30 days you were not able to perform your routine work because your physical health not good?</u> ","kannada":"ಕಳೆದ 30 ದಿನಗಳಲ್ಲಿ, ಆರೋಗ್ಯದ ಸಮಸ್ಯೆಯಿಂದಾಗಿ ನಿಮಗೆ ಎಷ್ಟುದಿನ ದಿನನಿತ್ಯದ ಕೆಲಸಗಳನ್ನು ಮಾಡಲು ಆಗಿಲ್ಲ?"},"ans":[],"section":"Health and health seeking behavior","next_qid":112},{"qid":112,"qtype":"num","range":"30","ph":"Number of days","ques":{"english":"<u>Thinking about your mental health</u>, which includes stress, depression, and problems with emotions, for how many days during the <u>past 30 days was your mental health not good?</u> ","kannada":"ಕಳೆದ 30 ದಿನಗಳಲ್ಲಿ,ಎಷ್ಟು ದಿನಗಳು ನಿಮ್ಮ ಮಾನಸಿಕ ಆರೋಗ್ಯ ಸರಿಯಿಲ್ಲ ಎಂದು ಅನಿಸಿದೆ?"},"ans":[],"section":"Health and health seeking behavior","next_qid":113},{"qid":113,"qtype":"num","range":"30","ph":"Number of days","ques":{"english":"<u>Thinking about your mental health</u>, for how many days during the <u>past 30 days</u> you were not able to perform your routine work because your mental health not good? ","kannada":"ಕಳೆದ 30 ದಿನಗಳಲ್ಲಿ, ಮಾನಸಿಕ ಆರೋಗ್ಯದ ಸಮಸ್ಯೆಯಿಂದಾಗಿ ನಿಮಗೆ ಎಷ್ಟುದಿನ ದಿನನಿತ್ಯದ ಕಲಸಗಳನ್ನು ಮಾಡಲು ಆಗಿಲ್ಲ  ?"},"ans":[],"section":"Health and health seeking behavior","next_qid":114},{"qid":114,"qtype":"radio","ques":{"english":"Do you have any kind of health insurance provided either by government (Ex: Ayushman Bharat -Arogya Karnataka,) or private agencies ? ","kannada":"ನಿಮ್ಮ ಬಳಿ ಯಾವುದಾದರೂ ಹೆಲ್ತ್ ಇನ್ಸೂರೆನ್ಸ್ ಇದೆಯಾ ?"},"ans":[{"aid":1,"value":"Yes","value_id":1,"next_qid":115},{"aid":2,"value":"No","value_id":0,"next_qid":115},{"aid":3,"value":"Do not know","value_id":99,"next_qid":115}],"section":"Health and health seeking behavior"},{"qid":115,"qtype":"radio","ques":{"english":"Generally, for health-related issues where do you usually seek care ? ","kannada":"ಆರೋಗ್ಯದ ಸಮಸ್ಯೆಗೆ ನೀವು ಮುಖ್ಯವಾಗಿ ಎಲ್ಲಿ ಚಿಕಿತ್ಸೆ ಪಡೆದುಕೊಳ್ಳುತ್ತೀರ?"},"ans":[{"aid":1,"value":"Sub centre","value_id":1,"next_qid":116},{"aid":2,"value":"Primary Health center","value_id":2,"next_qid":116},{"aid":3,"value":"Taluk hospital","value_id":3,"next_qid":116},{"aid":4,"value":"District Hospital","value_id":4,"next_qid":116},{"aid":5,"value":"Private clinic","value_id":5,"next_qid":116},{"aid":6,"value":"Private Nursing Home / Hospital","value_id":6,"next_qid":116},{"aid":7,"value":"Spiritual healer","value_id":7,"next_qid":116},{"aid":8,"value":"Traditional healer","value_id":8,"next_qid":116},{"aid":9,"value":"Others (specify)","value_id":96,"next_qid":116}],"section":"Health and health seeking behavior"},{"qid":116,"qtype":"radio","ques":{"english":"Have you heard about SNEHA clinic in government primary health center ? ","kannada":"ಸರಕಾರಿ ಪ್ರಾಥಮಿಕ ಆರೋಗ್ಯ ಕೇಂದ್ರದಲ್ಲಿ ಇರುವ ಸ್ನೇಹ ಕ್ಲಿನಿಕ್ ಬಗ್ಗೆ ನಿಮಗೆ ಗೊತ್ತಿದ್ದಿಯ?"},"ans":[{"aid":1,"value":"Yes","value_id":1,"next_qid":117.1},{"aid":2,"value":"No","value_id":0,"next_qid":117.1}],"section":"Health and health seeking behavior"},{"qid":117.1,"qtype":"radio","ques":{"english":"Generally, With whom do you discuss the <u>Physical health related issue</u>? ","kannada":"ಸಾಮಾನ್ಯವಾಗಿ ನಿಮ್ಮ ದೈಹಿಕ ಆರೋಗ್ಯ ಸಮಸ್ಯೆಗಳನ್ನ  ಯಾರೊಂದಿಗೆ ಚರ್ಚಿಸುತ್ತೀರಾ ?"},"ans":[{"aid":1,"value":"Mother","value_id":1,"next_qid":117.2},{"aid":2,"value":"Father","value_id":2,"next_qid":117.2},{"aid":3,"value":"Friends","value_id":3,"next_qid":117.2},{"aid":4,"value":"Relatives","value_id":4,"next_qid":117.2},{"aid":5,"value":"Others","value_id":5,"next_qid":117.2},{"aid":6,"value":"I do not discuss with any one","value_id":6,"next_qid":117.2}],"section":"Health and health seeking behavior"},{"qid":117.2,"qtype":"radio","ques":{"english":"Generally, With whom do you discuss the <u>Sexual or reproductive related issues</u>? ","kannada":"ಸಾಮಾನ್ಯವಾಗಿ  ಲೈಂಗಿಕ ಅಥವಾ ಸಂತನೋತ್ಪತ್ತಿಗೆ ಸಂಬಂಧಿಸಿದ ಸಮಸ್ಯೆಗಳನ್ನ ಯಾರೊಂದಿಗೆ ಚರ್ಚಿಸುತ್ತೀರಾ  ?"},"ans":[{"aid":1,"value":"Mother","value_id":1,"next_qid":117.3},{"aid":2,"value":"Father","value_id":2,"next_qid":117.3},{"aid":3,"value":"Friends","value_id":3,"next_qid":117.3},{"aid":4,"value":"Relatives","value_id":4,"next_qid":117.3},{"aid":5,"value":"Others","value_id":5,"next_qid":117.3},{"aid":6,"value":"I do not discuss with any one","value_id":6,"next_qid":117.3}],"section":"Health and health seeking behavior"},{"qid":117.3,"qtype":"radio","ques":{"english":"Generally, With whom do you discuss the <u>Mental or emotional issues</u>? ","kannada":"ಸಾಮಾನ್ಯವಾಗಿ  ಮಾನಸಿಕ ಅಥವಾ ಭಾವನಾತ್ಮಕ ಸಮಸ್ಯೆಗಳನ್ನ ಯಾರೊಂದಿಗೆ ಚರ್ಚಿಸುತ್ತೀರಾ?"},"ans":[{"aid":1,"value":"Mother","value_id":1,"next_qid":118},{"aid":2,"value":"Father","value_id":2,"next_qid":118},{"aid":3,"value":"Friends","value_id":3,"next_qid":118},{"aid":4,"value":"Relatives","value_id":4,"next_qid":118},{"aid":5,"value":"Others","value_id":5,"next_qid":118},{"aid":6,"value":"I do not discuss with any one","value_id":6,"next_qid":118}],"section":"Health and health seeking behavior"},{"qid":118,"qtype":"radio","ques":{"english":"Generally, to what extent do you share loving/caring/affectionate relationship with your family?  ","kannada":"ಸಾಮಾನ್ಯವಾಗಿ ನಿಮ್ಮ ಕುಟುಂಬದವರ ಜೊತೆಗೆ ಎಷ್ಟರ ಮಟ್ಟಿಗೆ ಪ್ರೀತಿ ಹಾಗೂ ಕಾಳಜಿಯುಳ್ಳ ಸಂಬಂಧವನ್ನು ಇಟ್ಟುಕೊಂಡಿದ್ದೀರಾ? "},"ans":[{"aid":1,"value":"Very great extent","value_id":1,"next_qid":119},{"aid":2,"value":"Large extent","value_id":2,"next_qid":119},{"aid":3,"value":"Some extent","value_id":3,"next_qid":119},{"aid":4,"value":"Not at all","value_id":4,"next_qid":119}],"section":"Communication with parents"},{"qid":119,"qtype":"radio","ques":{"english":"Generally, do you have any problem in communicating/discussing  any issues with your family  ","kannada":"ನಿಮ್ಮ ಸಮಸ್ಯೆಯನ್ನು ನಿಮ್ಮ ಕುಟುಂಬದವರಿಗೆ ಹೇಳಲು ಅಥವಾ ಚರ್ಚಿಸಲು ನಿಮಗೆ ಸಮಸ್ಯೆ ಇದೆಯೇ? "},"ans":[{"aid":1,"value":"Very great extent","value_id":1,"next_qid":120},{"aid":2,"value":"Large extent","value_id":2,"next_qid":120},{"aid":3,"value":"Some extent","value_id":3,"next_qid":120},{"aid":4,"value":"Not at all","value_id":4,"next_qid":120}],"section":"Communication with parents"},{"qid":120,"qtype":"num","range":"999","ph":"Number of times","ques":{"english":"In the past 12 month How many times did you get in into serious conflicts with your family? ","kannada":"ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ, ಎಷ್ಟುಬಾರಿ ಕುಟುಂಬದ ಸದಸ್ಯರೊಂದಿಗೆ ಗಂಭೀರವಾದ ಅಥವಾ ತೀವ್ರವಾದ ಜಗಳ ಮಾಡಿಕೊಂಡಿದ್ದೀರಾ ?"},"ans":[],"section":"Communication with parents","next_qid":121},{"qid":121,"qtype":"num","ph":"Enter number","ques":{"english":"How many peers (friends) do you have (with whom you interact with either on daily or regular basis and share most of your information)","kannada":"ನಿಮಗೆ ಎಷ್ಟು ಸ್ನೇಹಿತರು ಅಥವಾ ಮಿತ್ರರು ಇದ್ದಾರೆ (ಸ್ನೇಹಿತರು ಅಂದರೆ ಯಾವಾಗಲು ನಿಮ್ಮ ಸಂಪರ್ಕದಲ್ಲಿ ಇರುವವರು ಮತ್ತು ಅವರಲ್ಲಿ ನೀವು ಎಲ್ಲಾ ತರಹದ ವಿಷಯಗಳನ್ನು ಹಂಚಿಕೊಳ್ಳುವುದು) ?"},"ans":[],"section":"Peer network","next_qid":122.1,"range":999},{"qid":122.1,"qtype":"num","range":"999","ph":"Number of people","ques":{"english":"How many of your peers Smoke tobacco products ","kannada":"ನಿಮ್ಮ ಸ್ನೇಹಿತರಲ್ಲಿ ಎಷ್ಟು ಜನ  ಧೂಮಪಾನ ಮಾಡುತ್ತಾರೆ?"},"ans":[],"section":"Peer network","next_qid":122.2},{"qid":122.2,"qtype":"num","range":"999","ph":"Number of people","ques":{"english":"How many of your peers Use smokeless tobacco ","kannada":"ನಿಮ್ಮ ಸ್ನೇಹಿತರಲ್ಲಿ ಎಷ್ಟು ಜನ ಗುಟ್ಕಾ ಖೈನಿ, ಹನ್ಸ್ ಕಡ್ಡಿ ಪುಡಿ, ನಶೆ ಪುಡಿ ಇತರೆ ತಂಬಾಕಿನ ಉತ್ಪನ್ನಗಳನ್ನ ಉಪಯೋಗಿಸುತ್ತಾರೆ?"},"ans":[],"section":"Peer network","next_qid":122.3},{"qid":122.3,"qtype":"num","range":"999","ph":"Number of people","ques":{"english":"How many of your peers Drink alcohol ","kannada":"ನಿಮ್ಮ ಸ್ನೇಹಿತರಲ್ಲಿ ಎಷ್ಟು ಜನ ಮದ್ಯಪಾನ ಮಾಡುತ್ತಾರೆ ?"},"ans":[],"section":"Peer network","next_qid":122.4},{"qid":122.4,"qtype":"num","range":"999","ph":"Number of people","ques":{"english":"How many of your peers Use substances other than alcohol or tobacco (i.e drugs)?","kannada":"ನಿಮ್ಮ ಸ್ನೇಹಿತರಲ್ಲಿ ಎಷ್ಟು ಜನ ಮಾದಕ ವಸ್ತುಗಳನ್ನ ಬಳಸುತ್ತಾರೆ ?"},"ans":[],"section":"Peer network","next_qid":122.5},{"qid":122.5,"qtype":"num","range":"999","ph":"Number of people","ques":{"english":"How many of your peers do gambling?","kannada":"ನಿಮ್ಮ ಸ್ನೇಹಿತರಲ್ಲಿ ಎಷ್ಟು ಜನ ಜೂಜಾಟ ಆಡುತ್ತಾರೆ ?"},"ans":[],"section":"Peer network","next_qid":122.6},{"qid":121.6,"qtype":"num","range":"999","ph":"Number of people","ques":{"english":"How many of your peers who have Premarital/extra marital sexual relationship?","kannada":"ನಿಮ್ಮ ಸ್ನೇಹಿತರಲ್ಲಿ ಎಷ್ಟು ಜನ ವಿವಾಹ ಪೂರ್ವ / ವಿವಾಹ ನಂತರದ ಲೈಂಗಿಕ ಸಂಬಂಧ ಹೊಂದಿದ್ದಾರೆ ? "},"ans":[],"section":"Peer network","next_qid":123},{"qid":123,"qtype":"radio","ques":{"english":"Do you <b>currently</b> engage in any of the following pass time activities: Music, dance, singing, drawing, arts and crafts? ","kannada":"ನೀವು ಸಂಗೀತ, ನೃತ್ಯ, ಹಾಡುವುದು, ಚಿತ್ರ ಬಿಡಿಸುವುದು, ಕಲೆ, ಕೌಶಲ್ಯದಂತಹ ಚಟುವಟಿಕೆಗಳಲ್ಲಿ ತೊಡಗಿಸಿಕೊಂಡಿದ್ದೀರಾ?"},"ans":[{"aid":1,"value":"Yes","value_id":1,"next_qid":124},{"aid":2,"value":"No","value_id":0,"next_qid":124}],"section":"Free time activities, volunteerism and reading behaviour"},{"qid":124,"qtype":"num","range":"30","ph":"Number of times","ques":{"english":"In the <u>past 12 months</u>, How many times did you volunteer for community activities? ","kannada":"ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ ಎಷ್ಟು ಬಾರಿ ಸಮುದಾಯದ ಚಟುವಟಿಕೆಗಳಲ್ಲಿ ಸ್ವ ಇಚ್ಛೆಯಿಂದ ಭಾಗವಹಿಸಿದ್ದೀರಾ ?"},"ans":[],"section":"Free time activities, volunteerism and reading behaviour","next_qid":125},{"qid":125,"qtype":"radio","ques":{"english":"Do you read books/novels/magazine? ","kannada":"ನೀವು ಪುಸ್ತಕಗಳು / ಕಾದಂಬರಿಗಳು / ಪತ್ರಿಕೆಗಳನ್ನು ಓದುತ್ತೀರಾ ?"},"ans":[{"aid":1,"value":"Daily","value_id":1,"next_qid":126},{"aid":2,"value":"Very often","value_id":2,"next_qid":126},{"aid":3,"value":"Sometimes","value_id":3,"next_qid":126},{"aid":4,"value":"Rarely","value_id":4,"next_qid":126},{"aid":5,"value":"Never","value_id":5,"next_qid":126}],"section":"Free time activities, volunteerism and reading behaviour"},{"qid":126,"qtype":"radio","ques":{"english":"Do you read news paper? ","kannada":"ನೀವು ದಿನಪತ್ರಿಕೆಗಳನ್ನು ಓದುತ್ತೀರಾ?"},"ans":[{"aid":1,"value":"Daily","value_id":1,"next_qid":127},{"aid":2,"value":"Very often","value_id":2,"next_qid":127},{"aid":3,"value":"Sometimes","value_id":3,"next_qid":127},{"aid":4,"value":"Rarely","value_id":4,"next_qid":127},{"aid":5,"value":"Never","value_id":5,"next_qid":127}],"section":"Free time activities, volunteerism and reading behaviour"},{"qid":127,"qtype":"radio","ques":{"english":"What would you say about your level of belief in god ? ","kannada":"ದೇವರ ಮೇಲೆ ನಿಮಗೆ ಎಷ್ಟು ನಂಬಿಕೆ ಇದೆ ಎಂದು ತಿಳಿಸಿ ?"},"ans":[{"aid":1,"value":"Strongly Believe","value_id":1,"next_qid":128},{"aid":2,"value":"Believe","value_id":2,"next_qid":128},{"aid":3,"value":"Neutral","value_id":3,"next_qid":128},{"aid":4,"value":"Do not believe","value_id":4,"next_qid":128}],"section":"Spirituality"},{"qid":128,"qtype":"radio","ques":{"english":"In the <u>past 12 months</u> how often did you visit temples or other spiritual places ? ","kannada":"ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ, ನೀವು ಎಷ್ಟು  ಬಾರಿ ದೇವಾಲಯಗಳಿಗೆ ಹಾಗೂ ಆಧ್ಯಾತ್ಮಿಕ ಸ್ಥಳಗಳಿಗೆ ಭೇಟಿ ನೀಡಿದ್ದೀರಾ ?"},"ans":[{"aid":1,"value":"Daily","value_id":1,"next_qid":129},{"aid":2,"value":"Almost daily","value_id":2,"next_qid":129},{"aid":3,"value":"Some of the days","value_id":3,"next_qid":129},{"aid":4,"value":"Rarely","value_id":4,"next_qid":129},{"aid":5,"value":"Never","value_id":5,"next_qid":129}],"section":"Spirituality"},{"qid":129,"qtype":"radio","ques":{"english":"How often do you pray to god? ","kannada":"ನೀವು ಎಷ್ಟುಬಾರಿ ದೇವರನ್ನು ಪ್ರಾರ್ಥಿಸುತ್ತೀರಾ?"},"ans":[{"aid":1,"value":"Daily","value_id":1,"next_qid":130},{"aid":2,"value":"Almost daily","value_id":2,"next_qid":130},{"aid":3,"value":"Some of the days","value_id":3,"next_qid":130},{"aid":4,"value":"Rarely","value_id":4,"next_qid":130},{"aid":5,"value":"Never","value_id":5,"next_qid":130}],"section":"Spirituality"},{"qid":130,"qtype":"num","range":"500","ph":"in cms","ques":{"english":"Height (in cms)","kannada":" ಎತ್ತರ"},"ans":[],"section":"ANTHROPOMETRIC MEASUREMENTS","next_qid":131.1},{"qid":131.1,"qtype":"num","range":"500","ph":"in kgs","ques":{"english":"Weight (in kgs) - Reading 1","kannada":"ತೂಕ?"},"ans":[],"section":"ANTHROPOMETRIC MEASUREMENTS","next_qid":131.2},{"qid":131.2,"qtype":"num","range":"500","ph":"in kgs","ques":{"english":"Weight (in kgs) - Reading 2","kannada":" ತೂಕ?"},"ans":[],"section":"ANTHROPOMETRIC MEASUREMENTS","next_qid":132.1},{"qid":132.1,"qtype":"bp","ques":{"english":"Blood Pressure 1","kannada":"ರಕ್ತದೊತ್ತಡ "},"ans":[],"section":"ANTHROPOMETRIC MEASUREMENTS","next_qid":131.2},{"qid":132.2,"qtype":"bp","ques":{"english":"Blood Pressure 2","kannada":"ರಕ್ತದೊತ್ತಡ "},"ans":[],"section":"ANTHROPOMETRIC MEASUREMENTS","next_qid":132.3},{"qid":132.3,"qtype":"bp","ques":{"english":"Blood Pressure 3","kannada":"ರಕ್ತದೊತ್ತಡ "},"ans":[],"section":"ANTHROPOMETRIC MEASUREMENTS"}],"sections":[{"name":"Socio-demographic information","summary":""},{"name":"Nutrition","summary":""},{"name":"Physical Activity","summary":""},{"name":"Tobacco - Smoking","summary":""},{"name":"Tobacco - SMOKELESS TOBACCO","summary":""},{"name":"ALCOHOL","summary":""},{"name":"ALCOHOL DEPENDENCE –AUDIT SCALE","summary":""},{"name":"DRUG USE (Ganja/Bhanghi, Opium, Heroin and Others)","summary":""},{"name":"SEXUAL BEHAVIOUR","summary":""},{"name":"GAMBLING","summary":""},{"name":"VIOLENCE","summary":""},{"name":"Depression","summary":""},{"name":"Anxiety","summary":""},{"name":"Suicidal Behavior","summary":""},{"name":"Non suicidal self-injury","summary":""},{"name":"Road Behavior and Injury","summary":""},{"name":"TECHNOLOGY USE","summary":""},{"name":"Sleep","summary":""},{"name":"Health and health seeking behavior","summary":""},{"name":"Communication with parents","summary":""},{"name":"Peer network","summary":""},{"name":"Free time activities, volunteerism and reading behaviour","summary":""},{"name":"Spirituality","summary":""},{"name":"ANTHROPOMETRIC MEASUREMENTS","summary":""}],"heading":"Youth Health and Behaviour Surveillance Survey"}

var res = []
var data_payload = []



function checkValid(q_index, field_id, field_range){

	//console.log(field_id, field_range)

    var question_id = json_data.data[parseInt(q_index)]['qid']
    //alert('questionID'+question_id)
    var val = document.getElementById(field_id).value
    //alert('val'+val)
    //alert('field_range'+field_range)
    var res = field_id.split("_");
    question_id=res[1]
    
    var flag=true
    
    if (val < 0 || val > parseInt(field_range)){
        document.getElementById(field_id).value = ''
        flag=false
        //alert('Please enter values <='+field_range)
        
        
    }
    
    // 27 
    if(field_id == 'q_20_hh_data' && flag == true){
        json_data.data[27].hhvalue=val
            
    }
    
    if(field_id == 'q_20_mm_data' && flag == true){
        json_data.data[27].mmvalue=val
    }
    
    if(field_id == 'q_22_hh_data' && flag == true){
        json_data.data[29].hhvalue=val
            
    }
    
    if(field_id == 'q_22_mm_data' && flag == true){
        json_data.data[29].mmvalue=val
    }
    
    if(field_id == 'q_24_hh_data' && flag == true){
        json_data.data[31].hhvalue=val
            
    }
    
    if(field_id == 'q_24_mm_data' && flag == true){
        json_data.data[31].mmvalue=val
    }
    
    if(field_id == 'q_25_hh_data' && flag == true){
        json_data.data[32].hhvalue=val
            
    }
    
    if(field_id == 'q_25_mm_data' && flag == true){
        json_data.data[32].mmvalue=val
    }
    
    if(field_id == 'q_102_hh_data' && flag == true){
        json_data.data[143].hhvalue=val
            
    }
    
    if(field_id == 'q_102_mm_data' && flag == true){
        json_data.data[143].mmvalue=val
    }
    
    if(field_id == 'q_103_hh_data' && flag == true){
        json_data.data[144].hhvalue=val
            
    }
    
    if(field_id == 'q_103_mm_data' && flag == true){
        json_data.data[144].mmvalue=val
    }
    
    
    
    
    if(field_id == 'q_75_data' && flag == true){
        if(val>0){
            //document.getElementById('q_76_data').style.display = 'none'
            document.getElementById('q_76_q').style.display = 'block'
      		document.getElementById('q_76_ig').style.display = 'block'
            document.getElementById('q_76_k_q').style.display = 'block'
            document.getElementById('q_76_brk').style.display = 'block'
            json_data.data[parseInt(q_index)+1].ans_required = "true"
            json_data.data[parseInt(q_index)+1].value = "0"
            document.getElementById('q_76_q').style.color='black'
        document.getElementById('q_76_k_q').style.color = 'black'
        }else{
            document.getElementById('q_76_q').style.display = 'none'
      		document.getElementById('q_76_ig').style.display = 'none'
            document.getElementById('q_76_k_q').style.display = 'none'
            document.getElementById('q_76_brk').style.display = 'none'
            json_data.data[parseInt(q_index)+1].ans_required = "false"
            json_data.data[parseInt(q_index)+1].value = "-9"
            //json_data.data[i].selection_val = val
        }
        
    }
    if(field_id == 'q_77_data' && flag == true){
        if(val>0){
            //document.getElementById('q_76_data').style.display = 'none'
            document.getElementById('q_78_q').style.display = 'block'
      		document.getElementById('q_78_ig').style.display = 'block'
            document.getElementById('q_78_k_q').style.display = 'block'
            document.getElementById('q_78_brk').style.display = 'block'
            json_data.data[parseInt(q_index)+1].ans_required = "true"
            json_data.data[parseInt(q_index)+1].value = "0"
            document.getElementById('q_78_q').style.color='black'
        document.getElementById('q_78_k_q').style.color = 'black'
        }else{
            document.getElementById('q_78_q').style.display = 'none'
      		document.getElementById('q_78_ig').style.display = 'none'
            document.getElementById('q_78_k_q').style.display = 'none'
            document.getElementById('q_78_brk').style.display = 'none'
            json_data.data[parseInt(q_index)+1].ans_required = "false"
            json_data.data[parseInt(q_index)+1].value = "-9"
            //json_data.data[question_id+1].answer_reqd = "false"
        }
        
    }
    if(field_id == 'q_83_data' && flag == true){
        if(val>0){
            //document.getElementById('q_76_data').style.display = 'none'
            document.getElementById('q_84_q').style.display = 'block'
      		document.getElementById('q_84_ig').style.display = 'block'
            document.getElementById('q_84_k_q').style.display = 'block'
            document.getElementById('q_84_brk').style.display = 'block'
            json_data.data[parseInt(q_index)+1].ans_required = "true"
            json_data.data[parseInt(q_index)+1].value = "0"
            document.getElementById('q_84_q').style.color='black'
        document.getElementById('q_84_k_q').style.color = 'black'
        }else{
            document.getElementById('q_84_q').style.display = 'none'
      		document.getElementById('q_84_ig').style.display = 'none'
            document.getElementById('q_84_k_q').style.display = 'none'
            document.getElementById('q_84_brk').style.display = 'none'
            json_data.data[parseInt(q_index)+1].ans_required = "false"
            json_data.data[parseInt(q_index)+1].value = "-9"
           // json_data.data[question_id+1].answer_reqd = "false"
        }
        
    }
    if(field_id == 'q_85_data' && flag == true){
        if(val>0){
            //document.getElementById('q_76_data').style.display = 'none'
            document.getElementById('q_86_q').style.display = 'block'
      		document.getElementById('q_86_ig').style.display = 'block'
            document.getElementById('q_86_k_q').style.display = 'block'
            document.getElementById('q_86_brk').style.display = 'block'
            json_data.data[parseInt(q_index)+1].ans_required = "true"
            json_data.data[parseInt(q_index)+1].value = "0"
            document.getElementById('q_86_q').style.color='black'
        document.getElementById('q_86_k_q').style.color = 'black'
        }else{
            document.getElementById('q_86_q').style.display = 'none'
      		document.getElementById('q_86_ig').style.display = 'none'
            document.getElementById('q_86_k_q').style.display = 'none'
            document.getElementById('q_86_brk').style.display = 'none'
            json_data.data[parseInt(q_index)+1].ans_required = "false"
            json_data.data[parseInt(q_index)+1].value = "-9"
            //json_data.data[question_id+1].answer_reqd = "false"
        }
        
    }
    
    if(flag==true){
        document.getElementById('q_'+question_id+'_q').style.color='green'
        document.getElementById('q_'+question_id+'_k_q').style.color = 'green'
        json_data.data[parseInt(q_index)].value = val
        json_data.data[parseInt(q_index)].answered = "Y"
    }
    if(flag==false){
        alert('Please enter values <='+field_range)
    }
    document.getElementById('assessmentdatajson').value=JSON.stringify(json_data)
    
}

function select_radio_na(qid){
    var question_id = json_data.data[parseInt(qid)]['qid']
    
    document.getElementById('q_'+question_id+'_q').style.color='green'
    document.getElementById('q_'+question_id+'_k_q').style.color = 'green'
    
    var radio_element = document.getElementById('q'+question_id+'_rad')
    radio_element.classList.add("btn-rose")
    document.getElementById('q_'+question_id+'_data').style.display = 'none'
    document.getElementById('q_'+question_id+'_orbreak').style.display = 'none'
    document.getElementById('q'+question_id+'_num_of_times').style.display = 'block'
    var num_of_times_radio_element = document.getElementById('q'+question_id+'_num_of_times')
    num_of_times_radio_element.classList.remove("btn-rose")
    json_data.data[parseInt(qid)].value="0"
    json_data.data[parseInt(qid)].answered = "Y"
    document.getElementById('assessmentdatajson').value=JSON.stringify(json_data)
}

function markAnswered(qid,type){
    var question_id = json_data.data[parseInt(qid)]['qid']
    document.getElementById('q_'+question_id+'_q').style.color='green'
    document.getElementById('q_'+question_id+'_k_q').style.color = 'green'
    if(type == 'bp_dia'){
        var val = document.getElementById('q_'+question_id+'_dia_data').value
        json_data.data[parseInt(qid)].dia_value=val
        
    }
    if(type == 'bp_sys'){
        var val = document.getElementById('q_'+question_id+'_sys_data').value
        json_data.data[parseInt(qid)].sys_value=val
    }
    if(type=='others'){
        var val = document.getElementById('q_'+question_id+'_others_data').value
        json_data.data[parseInt(qid)].others_data=val
    }
    if(type == 'date' || type == 'text'){
        var val = document.getElementById('q_'+question_id+'_data').value
        //alert("test or date")
        json_data.data[parseInt(qid)].value=val
    }
    json_data.data[parseInt(qid)].answered = "Y"
    document.getElementById('assessmentdatajson').value=JSON.stringify(json_data)
    
    
}  
function select_radio_num_Of_times(qid){
    
    var question_id = json_data.data[parseInt(qid)]['qid']
    
    document.getElementById('q_'+question_id+'_q').style.color='green'
    document.getElementById('q_'+question_id+'_k_q').style.color = 'green'
    
    var na_radio_element = document.getElementById('q'+question_id+'_rad')
    var num_of_times_radio_element = document.getElementById('q'+question_id+'_num_of_times')
    num_of_times_radio_element.classList.add("btn-rose")
    na_radio_element.classList.remove("btn-rose")
    document.getElementById('q_'+question_id+'_data').style.display = 'block'
    document.getElementById('q_'+question_id+'_orbreak').style.display = 'block'
    json_data.data[parseInt(qid)].answered = "Y"
    document.getElementById('assessmentdatajson').value=JSON.stringify(json_data)
    
}

function select_radio(qid, element_id){

	var question_id = json_data.data[parseInt(qid)]['qid']
    json_data.data[parseInt(qid)].answered = "Y"
    next_qid=0
    //alert('qid'+qid)
    //alert('question_id'+question_id)
    
    document.getElementById('q_'+question_id+'_q').style.color='green'
    document.getElementById('q_'+question_id+'_k_q').style.color = 'green'
   //alert(question_id)   
    var radio_element = document.getElementById('q'+question_id+'_'+element_id)
	var element_count = json_data.data[parseInt(qid)]['ans'].length

	//json_data.data[parseInt(qid)].selection_val = parseInt(element_id)
    json_data.data[parseInt(qid)].value = parseInt(element_id)

	for(var i=0; i<element_count; i++){
		if((i+1) != parseInt(element_id)){
			var ele = document.getElementById('q'+question_id+'_'+(i+1).toString())
			ele.classList.remove("btn-rose")
		}
	}
    radio_element.classList.add("btn-rose")
    
     //DOB
    if(qid == 2){
       
        if(element_id==2){
            // Dont Show 2.2
            document.getElementById('q_2.2_q').style.display = 'none'
      		document.getElementById('q_2.2_ig').style.display = 'none'
            document.getElementById('q_2.2_k_q').style.display = 'none'
            document.getElementById('q_2.2_brk').style.display = 'none'
            json_data.data[3].value = -9
            json_data.data[3].ans_required = "false"
            json_data.data[3].answered = "Y"
            
            document.getElementById('q_2.3_q').style.display = 'block'
      		document.getElementById('q_2.3_ig').style.display = 'block'
            document.getElementById('q_2.3_k_q').style.display = 'block'
            document.getElementById('q_2.3_brk').style.display = 'block'
            document.getElementById('q_2.3_q').style.color='black'
            document.getElementById('q_2.3_k_q').style.color = 'black'
            json_data.data[4].ans_required = "true"
            document.getElementById('q_2.3_data').value = '0'
            json_data.data[4].answered = "N"
        }
        
        if(element_id==1){
            // Dont Show 2.3
            document.getElementById('q_2.3_q').style.display = 'none'
      		document.getElementById('q_2.3_ig').style.display = 'none'
            document.getElementById('q_2.3_k_q').style.display = 'none'
            document.getElementById('q_2.3_brk').style.display = 'none'
            json_data.data[4].value = -9
            json_data.data[4].ans_required = "false"
            json_data.data[4].answered = "Y"
            
            document.getElementById('q_2.2_q').style.display = 'block'
      		document.getElementById('q_2.2_ig').style.display = 'block'
            document.getElementById('q_2.2_k_q').style.display = 'block'
            document.getElementById('q_2.2_brk').style.display = 'block'
            document.getElementById('q_2.2_q').style.color='black'
            document.getElementById('q_2.2_k_q').style.color = 'black'
            json_data.data[3].ans_required = "true"
            document.getElementById('q_2.2_data').value = ''
            json_data.data[3].answered = "N"
        }
        
       
        
    }
    
     //Marital status
    
    if(qid == 7){ 
       
        if(element_id==1 || element_id==4 || element_id==5 || element_id==6 || element_id==3){
            // Dont Show 2.2
           
            
            document.getElementById('q_6_q').style.display = 'block'
      		document.getElementById('q_6_ig').style.display = 'block'
            document.getElementById('q_6_k_q').style.display = 'block'
            document.getElementById('q_6_brk').style.display = 'block'
            document.getElementById('q_6_q').style.color='black'
            document.getElementById('q_6_k_q').style.color = 'black'
            document.getElementById('q_6_k_q').value=0
            json_data.data[8].ans_required = "true"
            json_data.data[8].value=0
            json_data.data[8].answered = "N"
            
            if(element_id==1){
                //To show only married indiviual question
            document.getElementById('q_63_q').style.display = 'block'
      		document.getElementById('q_63_ig').style.display = 'block'
            document.getElementById('q_63_k_q').style.display = 'block'
            document.getElementById('q_63_brk').style.display = 'block'
            document.getElementById('q_63_q').style.color='black'
            document.getElementById('q_63_k_q').style.color = 'black'
                json_data.data[70].ans_required = "true"
                json_data.data[70].answered = "Y"
                json_data.data[70].value = -9
        
                
            }else{
            document.getElementById('q_63_q').style.color='black'
            document.getElementById('q_63_k_q').style.color = 'black'
            document.getElementById('q_63_q').style.display = 'none'
      		document.getElementById('q_63_ig').style.display = 'none'
            document.getElementById('q_63_k_q').style.display = 'none'
            document.getElementById('q_63_brk').style.display = 'none'
                json_data.data[70].ans_required = "false"
                json_data.data[70].answered = "N"
                
           
            }
        }
        
        if(element_id==2){
            // Dont Show 2.3
            document.getElementById('q_6_q').style.color='black'
            document.getElementById('q_6_k_q').style.color = 'black'
            document.getElementById('q_6_k_q').value=0
            document.getElementById('q_6_q').style.display = 'none'
      		document.getElementById('q_6_ig').style.display = 'none'
            document.getElementById('q_6_k_q').style.display = 'none'
            document.getElementById('q_6_brk').style.display = 'none'
            json_data.data[8].ans_required = "false"
            json_data.data[8].value=-9
            json_data.data[8].answered = "Y"
            
            document.getElementById('q_63_q').style.color='black'
            document.getElementById('q_63_k_q').style.color = 'black'
            document.getElementById('q_63_q').style.display = 'none'
      		document.getElementById('q_63_ig').style.display = 'none'
            document.getElementById('q_63_k_q').style.display = 'none'
            document.getElementById('q_63_brk').style.display = 'none' 
            json_data.data[70].ans_required = "false"
            json_data.data[70].answered = "N"
            

            
            
        }  
    }
    
    
    //Religion
    if(qid == 11){
        if(element_id== 7){
            document.getElementById('q_8_others_data').style.display ='block'
              
              json_data.data[11].ans_required = "true"
        }else{
            document.getElementById('q_8_others_data').style.display ='none'
             
              json_data.data[11].ans_required = "false"
        }
    }
    //Nutrition - Fruits
    if(qid == 17){
       
        if(element_id== 1){
            // Dont Show 2.2
           
            
            document.getElementById('q_15_q').style.color='black'
            document.getElementById('q_15_k_q').style.color = 'black'
            document.getElementById('q_15_k_q').value=0
            json_data.data[17].ans_required = "false"
            json_data.data[17].value=-9
            document.getElementById('q_15_q').style.display = 'none'
      		document.getElementById('q_15_ig').style.display = 'none'
            document.getElementById('q_15_k_q').style.display = 'none'
            document.getElementById('q_15_brk').style.display = 'none'
            json_data.data[17].answered = "Y"
        }else{
            // Dont Show 2.3
            document.getElementById('q_15_q').style.display = 'block'
      		document.getElementById('q_15_ig').style.display = 'block'
            document.getElementById('q_15_k_q').style.display = 'block'
            document.getElementById('q_15_brk').style.display = 'block'
            document.getElementById('q_15_q').style.color='black'
            document.getElementById('q_15_k_q').style.color = 'black'
            document.getElementById('q_15_k_q').value=0
            json_data.data[17].ans_required = "true"
            json_data.data[17].value=0
            json_data.data[17].answered = "N"
        }  
    }
    
    //Nutrition - Veg
    if(qid == 19){
       
        if(element_id== 1){
            // Dont Show 2.2
           
            document.getElementById('q_17_q').style.color='black'
            document.getElementById('q_17_k_q').style.color = 'black'
            document.getElementById('q_17_k_q').value=0
            document.getElementById('q_17_q').style.display = 'none'
      		document.getElementById('q_17_ig').style.display = 'none'
            document.getElementById('q_17_k_q').style.display = 'none'
            document.getElementById('q_17_brk').style.display = 'none'
            json_data.data[20].ans_required = "false"
            json_data.data[20].value=-9
            json_data.data[20].answered = "Y"
        }else{
            // Dont Show 2.3
            document.getElementById('q_17_q').style.display = 'block'
      		document.getElementById('q_17_ig').style.display = 'block'
            document.getElementById('q_17_k_q').style.display = 'block'
            document.getElementById('q_17_brk').style.display = 'block'
            document.getElementById('q_17_q').style.color='black'
            document.getElementById('q_17_k_q').style.color = 'black'
            document.getElementById('q_17_k_q').value=0
            json_data.data[20].ans_required = "true"
            json_data.data[20].value=0
            json_data.data[20].answered = "N"
        }  
    }
    
    //Physical activities || qid == 28 || qid == 30
    if(qid == 26 ){
       
        if(element_id== 1){
            // Dont Show
           
            
            document.getElementById('q_20_q').style.color='black'
            document.getElementById('q_20_k_q').style.color = 'black'
            document.getElementById('q_20_hh_data').value=0
            document.getElementById('q_20_mm_data').value=0
            document.getElementById('q_20_q').style.display = 'none'
      		document.getElementById('q_20_ig').style.display = 'none'
            document.getElementById('q_20_k_q').style.display = 'none'
            document.getElementById('q_20_brk').style.display = 'none'
            json_data.data[27].ans_required = "false"
            json_data.data[27].hhvalue=-9
            json_data.data[27].mmvalue=-9
            json_data.data[27].answered = "Y"
            
        }else{
            // Show
            document.getElementById('q_20_q').style.display = 'block'
      		document.getElementById('q_20_ig').style.display = 'block'
            document.getElementById('q_20_k_q').style.display = 'block'
            document.getElementById('q_20_brk').style.display = 'block'
            document.getElementById('q_20_q').style.color='black'
            document.getElementById('q_20_k_q').style.color = 'black'
            document.getElementById('q_20_hh_data').value=0
            document.getElementById('q_20_mm_data').value=0
            json_data.data[27].ans_required = "true"
            json_data.data[27].answered = "N"
            
        }  
    }
    //Moderate Physical activities
    
    if(qid == 28 ){
       
        if(element_id== 1){
            // Dont Show 2.2
           
            
            document.getElementById('q_22_q').style.color='black'
            document.getElementById('q_22_k_q').style.color = 'black'
            document.getElementById('q_22_hh_data').value=0
            document.getElementById('q_22_mm_data').value=0
            document.getElementById('q_22_q').style.display = 'none'
      		document.getElementById('q_22_ig').style.display = 'none'
            document.getElementById('q_22_k_q').style.display = 'none'
            document.getElementById('q_22_brk').style.display = 'none'
            json_data.data[29].ans_required = "false"
            json_data.data[29].hhvalue=-9
            json_data.data[29].mmvalue=-9
            json_data.data[29].answered = "Y"
            
            //json_data.data[parseInt(qid+1)].selection_val_hh = -9
            //json_data.data[parseInt(qid+1)].selection_val_mm = -9
        }else{
            // Dont Show 2.3
            document.getElementById('q_22_q').style.display = 'block'
      		document.getElementById('q_22_ig').style.display = 'block'
            document.getElementById('q_22_k_q').style.display = 'block'
            document.getElementById('q_22_brk').style.display = 'block'
            document.getElementById('q_22_q').style.color='black'
            document.getElementById('q_22_k_q').style.color = 'black'
            document.getElementById('q_22_hh_data').value=0
            document.getElementById('q_22_mm_data').value=0
            json_data.data[29].ans_required = "true"
            json_data.data[29].answered = "N"
        }  
    }
    
    if(qid == 30 ){
       
        if(element_id== 1){
            // Dont Show 2.2
           
            document.getElementById('q_24_q').style.color='black'
            document.getElementById('q_24_k_q').style.color = 'black'
            document.getElementById('q_24_hh_data').value=0
            document.getElementById('q_24_mm_data').value=0
            document.getElementById('q_24_q').style.display = 'none'
      		document.getElementById('q_24_ig').style.display = 'none'
            document.getElementById('q_24_k_q').style.display = 'none'
            document.getElementById('q_24_brk').style.display = 'none'
            json_data.data[31].ans_required = "false"
            json_data.data[31].hhvalue=-9
            json_data.data[31].mmvalue=-9
            json_data.data[31].answered = "Y"
            
        }else{
            // Dont Show 2.3
            document.getElementById('q_24_q').style.display = 'block'
      		document.getElementById('q_24_ig').style.display = 'block'
            document.getElementById('q_24_k_q').style.display = 'block'
            document.getElementById('q_24_brk').style.display = 'block'
            document.getElementById('q_24_q').style.color='black'
            document.getElementById('q_24_k_q').style.color = 'black'
            document.getElementById('q_24_hh_data').value=0
            document.getElementById('q_24_mm_data').value=0
            json_data.data[31].ans_required = "true"
            json_data.data[31].answered = "N"
        }  
    }
    
    //Tobacco
     if(qid == 33 ){
       next_qid=parseInt(qid)
        if(element_id== 1){
            // Dont Show 2.2
           
            for(var i=27; i<=34; i++){
                
               next_qid=next_qid+1
                document.getElementById('q_'+i+'_q').style.color='black'
                document.getElementById('q_'+i+'_k_q').style.color = 'black'    
                document.getElementById('q_'+i+'_q').style.display = 'none'
      		    document.getElementById('q_'+i+'_ig').style.display = 'none'
                document.getElementById('q_'+i+'_k_q').style.display = 'none'
                document.getElementById('q_'+i+'_brk').style.display = 'none'
                json_data.data[next_qid].ans_required = "false"
                json_data.data[next_qid].value = -9
                json_data.data[next_qid].answered = "Y"
                
            }
            
            
            
           
        }else{
            // Dont Show 2.3
            
            for(var i=27; i<=34; i++){
                
               next_qid=next_qid+1  
                document.getElementById('q_'+i+'_q').style.display = 'block'
      		    document.getElementById('q_'+i+'_ig').style.display = 'block'
                document.getElementById('q_'+i+'_k_q').style.display = 'block'
                document.getElementById('q_'+i+'_brk').style.display = 'block'
                 document.getElementById('q_'+i+'_q').style.color='black'
                document.getElementById('q_'+i+'_k_q').style.color = 'black'
                json_data.data[next_qid].ans_required = "true"
                json_data.data[next_qid].answered = "N"
                //json_data.data[next_qid].selection_val = -9
                
            }
            
           
            
            
        }  
    }
    
    //Smokeless tobacco
     if(qid == 42 ){
       next_qid=parseInt(qid)
        if(element_id== 1){
            
           
            for(var i=36; i<=42; i++){
               // alert(i)
                next_qid=next_qid+1  
                document.getElementById('q_'+i+'_q').style.color='black'
                document.getElementById('q_'+i+'_k_q').style.color = 'black'  
                document.getElementById('q_'+i+'_q').style.display = 'none'
      		    document.getElementById('q_'+i+'_ig').style.display = 'none'
                document.getElementById('q_'+i+'_k_q').style.display = 'none'
                document.getElementById('q_'+i+'_brk').style.display = 'none'
                json_data.data[next_qid].ans_required = "false"
                json_data.data[next_qid].value = -9
                json_data.data[next_qid].answered = "Y"
                //json_data.data[next_qid].selection_val = -9
                 //alert("i later"+i)
            }
        }else{
            
            
            for(var i=36; i<=42; i++){
                next_qid=next_qid+1 
                document.getElementById('q_'+i+'_q').style.display = 'block'
      		    document.getElementById('q_'+i+'_ig').style.display = 'block'
                document.getElementById('q_'+i+'_k_q').style.display = 'block'
                document.getElementById('q_'+i+'_brk').style.display = 'block'
                document.getElementById('q_'+i+'_q').style.color='black'
                document.getElementById('q_'+i+'_k_q').style.color = 'black'
                json_data.data[next_qid].ans_required = "true"
                json_data.data[next_qid].answered = "N"
                
            }
            
        }  
    }
    
    //Alcohol
     if(qid == 50 ){
       next_qid=parseInt(qid)
        if(element_id== 1){
            
           
            for(var i=44; i<=57; i++){
                //alert(i)
                next_qid=next_qid+1  
                document.getElementById('q_'+i+'_q').style.color='black'
                document.getElementById('q_'+i+'_k_q').style.color = 'black'  
                document.getElementById('q_'+i+'_q').style.display = 'none'
      		    document.getElementById('q_'+i+'_ig').style.display = 'none'
                document.getElementById('q_'+i+'_k_q').style.display = 'none'
                document.getElementById('q_'+i+'_brk').style.display = 'none'
                json_data.data[next_qid].ans_required = "false"
                json_data.data[next_qid].value = -9
                json_data.data[next_qid].answered = "Y"
                //json_data.data[next_qid].selection_val = -9
                 //alert("i later"+i)
            }
            
        
        }else{
            
            
            for(var i=44; i<=57; i++){
                next_qid=next_qid+1 
                 document.getElementById('q_'+i+'_q').style.display = 'block'
      		    document.getElementById('q_'+i+'_ig').style.display = 'block'
                document.getElementById('q_'+i+'_k_q').style.display = 'block'
                document.getElementById('q_'+i+'_brk').style.display = 'block'
                document.getElementById('q_'+i+'_q').style.color='black'
                document.getElementById('q_'+i+'_k_q').style.color = 'black'
                json_data.data[next_qid].ans_required = "true"
                json_data.data[next_qid].answered = "N"
                
            }
            
            
            
            
        }  
    }
    
    //Drug
     if(qid == 65 ){
       next_qid=parseInt(qid)
        if(element_id== 2){
            
           
            for(var i=59; i<=60; i++){
                //alert(i)
                next_qid=next_qid+1  
                document.getElementById('q_'+i+'_q').style.color='black'
                document.getElementById('q_'+i+'_k_q').style.color = 'black'  
                document.getElementById('q_'+i+'_q').style.display = 'none'
      		    document.getElementById('q_'+i+'_ig').style.display = 'none'
                document.getElementById('q_'+i+'_k_q').style.display = 'none'
                document.getElementById('q_'+i+'_brk').style.display = 'none'
                json_data.data[next_qid].ans_required = "false"
                json_data.data[next_qid].value = -9
                json_data.data[next_qid].answered = "Y"
                //json_data.data[next_qid].selection_val = -9
                 //alert("i later"+i)
            }
            
        
        }else{
            
            
            for(var i=59; i<=60; i++){
                next_qid=next_qid+1 
                 document.getElementById('q_'+i+'_q').style.display = 'block'
      		    document.getElementById('q_'+i+'_ig').style.display = 'block'
                document.getElementById('q_'+i+'_k_q').style.display = 'block'
                document.getElementById('q_'+i+'_brk').style.display = 'block'
                document.getElementById('q_'+i+'_q').style.color='black'
                document.getElementById('q_'+i+'_k_q').style.color = 'black'
                json_data.data[next_qid].ans_required = "true"
                json_data.data[next_qid].answered = "N"
                
            }
            
            
            
            
        }  
    }
    
    //Sexual - Gender
    
    if(qid==5){
        
        if(element_id== 2){
            document.getElementById('q_62_q').style.display = 'block'
      		    document.getElementById('q_62_ig').style.display = 'block'
                document.getElementById('q_62_k_q').style.display = 'block'
                document.getElementById('q_62_brk').style.display = 'block'
            document.getElementById('q_62_q').style.color='black'
                document.getElementById('q_62_k_q').style.color = 'black'
                json_data.data[69].ans_required = "true"
                json_data.data[69].answered = "N"
            
            document.getElementById('q_64_q').style.display = 'block'
      		    document.getElementById('q_64_ig').style.display = 'block'
                document.getElementById('q_64_k_q').style.display = 'block'
                document.getElementById('q_64_brk').style.display = 'block'
            document.getElementById('q_64_q').style.color='black'
                document.getElementById('q_64_k_q').style.color = 'black'
            json_data.data[72].ans_required = "true"
            json_data.data[72].answered = "N"
            
            document.getElementById('q_64.1_q').style.display = 'block'
      		    document.getElementById('q_64.1_ig').style.display = 'block'
                document.getElementById('q_64.1_k_q').style.display = 'block'
                document.getElementById('q_64.1_brk').style.display = 'block'
            document.getElementById('q_64.1_q').style.color='black'
                document.getElementById('q_64.1_k_q').style.color = 'black'
            json_data.data[73].ans_required = "true"
            json_data.data[73].answered = "N"
            
            
                
        }else{
            document.getElementById('q_62_q').style.color='black'
                document.getElementById('q_62_k_q').style.color = 'black'
            document.getElementById('q_62_q').style.display = 'none'
      		    document.getElementById('q_62_ig').style.display = 'none'
                document.getElementById('q_62_k_q').style.display = 'none'
                document.getElementById('q_62_brk').style.display = 'none'
            json_data.data[69].ans_required = "false"
                json_data.data[69].value = -9
            json_data.data[69].answered = "Y"
            
            document.getElementById('q_64_q').style.color='black'
                document.getElementById('q_64_k_q').style.color = 'black' 
            document.getElementById('q_64_q').style.display = 'none'
      		    document.getElementById('q_64_ig').style.display = 'none'
                document.getElementById('q_64_k_q').style.display = 'none'
                document.getElementById('q_64_brk').style.display = 'none'
            
            json_data.data[72].ans_required = "false"
                json_data.data[72].value = -9
            json_data.data[72].answered = "Y"
            
            document.getElementById('q_64.1_q').style.color='black'
                document.getElementById('q_64.1_k_q').style.color = 'black' 
            document.getElementById('q_64.1_q').style.display = 'none'
      		    document.getElementById('q_64.1_ig').style.display = 'none'
                document.getElementById('q_64.1_k_q').style.display = 'none'
                document.getElementById('q_64.1_brk').style.display = 'none'
            
            
            json_data.data[73].ans_required = "false"
                json_data.data[73].value = -9
            json_data.data[73].answered = "Y"
            
        }
        
    }
    
  //Pregnancy
    if(qid==72){
        if(element_id== 1){
                document.getElementById('q_64.1_q').style.display = 'block'
      		    document.getElementById('q_64.1_ig').style.display = 'block'
                document.getElementById('q_64.1_k_q').style.display = 'block'
                document.getElementById('q_64.1_brk').style.display = 'block'
                document.getElementById('q_64.1_q').style.color='black'
                document.getElementById('q_64.1_k_q').style.color = 'black'
                json_data.data[73].ans_required = "true"
            json_data.data[73].answered = "N"
        }else{
                document.getElementById('q_64.1_q').style.color='black'
                document.getElementById('q_64.1_k_q').style.color = 'black'
                json_data.data[73].ans_required = "false" 
                document.getElementById('q_64.1_q').style.display = 'none'
      		    document.getElementById('q_64.1_ig').style.display = 'none'
                document.getElementById('q_64.1_k_q').style.display = 'none'
                document.getElementById('q_64.1_brk').style.display = 'none'
               json_data.data[73].value = -9
            json_data.data[73].answered = "Y"
        }
        
    }
    
    //Sexual - premarital-extramarital
    if(qid==74){
        next_qid=parseInt(qid)
        if(element_id== 2 || element_id== 3){
            //Dont dispaly 66- 69
            
            for(var i=66; i<=69; i++){
                //alert(i)
                next_qid=next_qid+1  
                document.getElementById('q_'+i+'_q').style.color='black'
                document.getElementById('q_'+i+'_k_q').style.color = 'black'  
                document.getElementById('q_'+i+'_q').style.display = 'none'
      		    document.getElementById('q_'+i+'_ig').style.display = 'none'
                document.getElementById('q_'+i+'_k_q').style.display = 'none'
                document.getElementById('q_'+i+'_brk').style.display = 'none'
                json_data.data[next_qid].ans_required = "false"
                json_data.data[next_qid].value = -9
                json_data.data[next_qid].answered = "Y"
               // json_data.data[next_qid].selection_val = -9
                 //alert("i later"+i)
            }
            
        }else{
            
            for(var i=66; i<=69; i++){
                next_qid=next_qid+1 
                 document.getElementById('q_'+i+'_q').style.display = 'block'
      		    document.getElementById('q_'+i+'_ig').style.display = 'block'
                document.getElementById('q_'+i+'_k_q').style.display = 'block'
                document.getElementById('q_'+i+'_brk').style.display = 'block'
                document.getElementById('q_'+i+'_q').style.color='black'
                document.getElementById('q_'+i+'_k_q').style.color = 'black'
                json_data.data[next_qid].ans_required = "true"
                json_data.data[next_qid].answered = "N"
                
            }
        }
    }
    
   
    
    
    //Gambling
     if(qid==79){
       //If No --> Hide 71-74
         next_qid=parseInt(qid)
        if(element_id== 2){
            //Dont dispaly 66- 69
            for(var i=71; i<=74; i++){
                //alert(i)
                next_qid=next_qid+1
                document.getElementById('q_'+i+'_q').style.color='black'
                document.getElementById('q_'+i+'_k_q').style.color = 'black'  
                document.getElementById('q_'+i+'_q').style.display = 'none'
      		    document.getElementById('q_'+i+'_ig').style.display = 'none'
                document.getElementById('q_'+i+'_k_q').style.display = 'none'
                document.getElementById('q_'+i+'_brk').style.display = 'none'
                 json_data.data[next_qid].ans_required = "false"
                 json_data.data[next_qid].value = -9
                json_data.data[next_qid].answered = "Y"
                
                
               // json_data.data[next_qid].selection_val = -9
                 //alert("i later"+i)
            }
                document.getElementById('q_71.1_q').style.color='black'
                document.getElementById('q_71.1_k_q').style.color = 'black'
                document.getElementById('q_71.1_q').style.display = 'none'
      		    document.getElementById('q_71.1_ig').style.display = 'none'
                document.getElementById('q_71.1_k_q').style.display = 'none'
                document.getElementById('q_71.1_brk').style.display = 'none'
                json_data.data[81].ans_required = "false"
                json_data.data[81].value = -9
            json_data.data[81].answered = "Y"
            
        }else{
            for(var i=71; i<=74; i++){
                next_qid=next_qid+1 
                document.getElementById('q_'+i+'_q').style.display = 'block'
      		    document.getElementById('q_'+i+'_ig').style.display = 'block'
                document.getElementById('q_'+i+'_k_q').style.display = 'block'
                document.getElementById('q_'+i+'_brk').style.display = 'block'
                document.getElementById('q_'+i+'_q').style.color='black'
                document.getElementById('q_'+i+'_k_q').style.color = 'black'
                json_data.data[next_qid].ans_required = "true"
                json_data.data[next_qid].answered = "N"
            }
                document.getElementById('q_71.1_q').style.display = 'block'
      		    document.getElementById('q_71.1_ig').style.display = 'block'
                document.getElementById('q_71.1_k_q').style.display = 'block'
                document.getElementById('q_71.1_brk').style.display = 'block'
                document.getElementById('q_71.1_q').style.color='black'
                document.getElementById('q_71.1_k_q').style.color = 'black'
                json_data.data[81].ans_required = "true"
            json_data.data[81].answered = "N"
        }
     }
    

    
	// Suicidal Behaiour - To be handled for others of 84th question
    
    
    if(qid == 108){
        if(element_id== 6){
            document.getElementById('q_84_others_data').style.display ='block'
        }else{
            document.getElementById('q_84_others_data').style.display ='none'
            json_data.data[108].answered = "Y"
        }
    }
    
    // Family Planning - Others (redundant others question to be removed from json or hidden)
     if(qid == 70){
        if(element_id== 9){
            document.getElementById('q_63_others_data').style.display ='block'
        }else{
            document.getElementById('q_63_others_data').style.display ='none'
            json_data.data[70].answered = "Y"
        }
    }
    
    // Occupation - Others (redundant others question to be removed from json or the question made hidden)
     if(qid == 9){
        if(element_id== 11){
            document.getElementById('q_7_others_data').style.display ='block'
        }else{
            document.getElementById('q_7_others_data').style.display ='none'
            json_data.data[9].answered = "Y"
        }
    }
     
    
    if(qid == 135){
        if(element_id== 6){
            document.getElementById('q_100_others_data').style.display ='block'
        }else{
            document.getElementById('q_100_others_data').style.display ='none'
            json_data.data[135].answered = "Y"
        }
    }
    
    //Health and health seeking behaviour
    if(qid == 161){
        if(element_id== 9){
            document.getElementById('q_115_others_data').style.display ='block'
        }else{
            document.getElementById('q_115_others_data').style.display ='none'
             json_data.data[161].answered = "Y"
        }
    }
    
    if(qid==136){
        if(element_id== 2){
                document.getElementById('q_101.1_q').style.color='black'
                document.getElementById('q_101.1_k_q').style.color = 'black'
                document.getElementById('q_101.1_q').style.display = 'none'
      		    document.getElementById('q_101.1_ig').style.display = 'none'
                document.getElementById('q_101.1_k_q').style.display = 'none'
                document.getElementById('q_101.1_brk').style.display = 'none'
                json_data.data[137].ans_required = "false"
                json_data.data[137].value = -9
                json_data.data[137].answered = "Y"
            
                
                document.getElementById('q_101.2_q').style.color='black'
                document.getElementById('q_101.2_k_q').style.color = 'black'
                json_data.data[138].ans_required = "false"
                json_data.data[138].value = -9
                document.getElementById('q_101.2_q').style.display = 'none'
      		    document.getElementById('q_101.2_ig').style.display = 'none'
                document.getElementById('q_101.2_k_q').style.display = 'none'
                document.getElementById('q_101.2_brk').style.display = 'none'
            json_data.data[138].answered = "Y"
            
                document.getElementById('q_101.3_q').style.color='black'
                document.getElementById('q_101.3_k_q').style.color = 'black'
                json_data.data[139].ans_required = "false"
                json_data.data[139].value = -9
                document.getElementById('q_101.3_q').style.display = 'none'
      		    document.getElementById('q_101.3_ig').style.display = 'none'
                document.getElementById('q_101.3_k_q').style.display = 'none'
                document.getElementById('q_101.3_brk').style.display = 'none'
            json_data.data[139].answered = "Y"
            
                document.getElementById('q_101.4_q').style.color='black'
                document.getElementById('q_101.4_k_q').style.color = 'black'
                json_data.data[140].ans_required = "false"
                json_data.data[140].value = -9
                document.getElementById('q_101.4_q').style.display = 'none'
      		    document.getElementById('q_101.4_ig').style.display = 'none'
                document.getElementById('q_101.4_k_q').style.display = 'none'
                document.getElementById('q_101.4_brk').style.display = 'none'
            json_data.data[140].answered = "Y"
            
                document.getElementById('q_101.5_q').style.color='black'
                document.getElementById('q_101.5_k_q').style.color = 'black'
                json_data.data[141].ans_required = "false"
                json_data.data[141].value = -9
                document.getElementById('q_101.5_q').style.display = 'none'
      		    document.getElementById('q_101.5_ig').style.display = 'none'
                document.getElementById('q_101.5_k_q').style.display = 'none'
                document.getElementById('q_101.5_brk').style.display = 'none'
            json_data.data[141].answered = "Y"
            
                document.getElementById('q_101.6_q').style.color='black'
                document.getElementById('q_101.6_k_q').style.color = 'black'
                json_data.data[142].ans_required = "false"
                json_data.data[142].value = -9
                document.getElementById('q_101.6_q').style.display = 'none'
      		    document.getElementById('q_101.6_ig').style.display = 'none'
                document.getElementById('q_101.6_k_q').style.display = 'none'
                document.getElementById('q_101.6_brk').style.display = 'none'
            json_data.data[142].answered = "Y"
            
        
        }else{
            
                document.getElementById('q_101.1_q').style.display = 'block'
      		    document.getElementById('q_101.1_ig').style.display = 'block'
                document.getElementById('q_101.1_k_q').style.display = 'block'
                document.getElementById('q_101.1_brk').style.display = 'block'
                document.getElementById('q_101.1_q').style.color='black'
                document.getElementById('q_101.1_k_q').style.color = 'black'
                json_data.data[137].ans_required = "true"
            json_data.data[137].answered = "N"
        
            
                document.getElementById('q_101.2_q').style.display = 'block'
      		    document.getElementById('q_101.2_ig').style.display = 'block'
                document.getElementById('q_101.2_k_q').style.display = 'block'
                document.getElementById('q_101.2_brk').style.display = 'block'
                document.getElementById('q_101.2_q').style.color='black'
                document.getElementById('q_101.2_k_q').style.color = 'black'
                json_data.data[138].ans_required = "true"
            json_data.data[138].answered = "N"
            
                document.getElementById('q_101.3_q').style.display = 'block'
      		    document.getElementById('q_101.3_ig').style.display = 'block'
                document.getElementById('q_101.3_k_q').style.display = 'block'
                document.getElementById('q_101.3_brk').style.display = 'block'
               document.getElementById('q_101.3_q').style.color='black'
                document.getElementById('q_101.3_k_q').style.color = 'black'
                json_data.data[139].ans_required = "true"
            json_data.data[139].answered = "N"
            
                document.getElementById('q_101.4_q').style.display = 'block'
      		    document.getElementById('q_101.4_ig').style.display = 'block'
                document.getElementById('q_101.4_k_q').style.display = 'block'
                document.getElementById('q_101.4_brk').style.display = 'block'
                document.getElementById('q_101.4_q').style.color='black'
                document.getElementById('q_101.4_k_q').style.color = 'black'
                json_data.data[140].ans_required = "true"
             json_data.data[140].answered = "N"
            
                document.getElementById('q_101.5_q').style.display = 'block'
      		    document.getElementById('q_101.5_ig').style.display = 'block'
                document.getElementById('q_101.5_k_q').style.display = 'block'
                document.getElementById('q_101.5_brk').style.display = 'block'
                document.getElementById('q_101.5_q').style.color='black'
                document.getElementById('q_101.5_k_q').style.color = 'black'
                json_data.data[141].ans_required = "true"
             json_data.data[141].answered = "N"
            
                document.getElementById('q_101.6_q').style.display = 'block'
      		    document.getElementById('q_101.6_ig').style.display = 'block'
                document.getElementById('q_101.6_k_q').style.display = 'block'
                document.getElementById('q_101.6_brk').style.display = 'block'
                document.getElementById('q_101.6_q').style.color='black'
                document.getElementById('q_101.6_k_q').style.color = 'black'
                json_data.data[142].ans_required = "true"
             json_data.data[142].answered = "N"
            
        }
        
    }
    
    
    document.getElementById('assessmentdatajson').value=JSON.stringify(json_data)
    
    //If the answer for 4th question is 2 (Single), then the 5th question should be skipped
    
	
}

function on_submitNew(){
    //getLocation();
    var flag = 0

	var data_payload = []
    var questions_to_be_answered = []
    questions_to_be_answered = ""
    var today = new Date();
    var savetime=today.getDate()+"/"+(today.getMonth()+1)+"/"+today.getFullYear()+"-"+today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
    var latlong = document.getElementById('lat').value+","+document.getElementById('lon').value;
    var member = memberId;
    var household = householdId;
    var data_payload = []
    var metadata_payload = {}

	for(var i=0; i<json_data.data.length; i++){
		
		var ques_type = json_data.data[i].qtype
        //If the question has ans_required == true and answered == N, then that question must be answered by the user.
        //Else the submission of json data should happen
        
        if(json_data.data[i].ans_required == "true" && json_data.data[i].answered == "N" && (json_data.data[i].qid!='7.1' || json_data.data[i].qid!='63.1')){
            questions_to_be_answered = questions_to_be_answered + json_data.data[i].qid + ";"
            flag=1;
        }

    }
    //For testing
	flag = 0
    if(flag == 0){
         //document.getElementById('jsondata').innerHTML = JSON.stringify(json_data)
        //alert("All answered")
        for(var i=0; i<json_data.data.length; i++){
        var ques_type = json_data.data[i].qtype
        if(ques_type == 'text' || ques_type == 'num' || ques_type == 'num_na' || ques_type == 'date'){
            data_payload.push({'qid': json_data.data[i].qid, 'qtype':json_data.data[i].qtype,'ans_required': json_data.data[i].ans_required,"answered":json_data.data[i].answered,"value":json_data.data[i].value})
        }
        
        if(ques_type == 'bp'){
            data_payload.push({'qid': json_data.data[i].qid, 'qtype':json_data.data[i].qtype,'ans_required': json_data.data[i].ans_required,"answered":json_data.data[i].answered,"sys_value":json_data.data[i].sys_value,"dia_value":json_data.data[i].dia_value})
        }
        
        if(ques_type == 'time'){
            data_payload.push({'qid': json_data.data[i].qid, 'qtype':json_data.data[i].qtype,'ans_required': json_data.data[i].ans_required,"answered":json_data.data[i].answered,"hhvalue":json_data.data[i].hhvalue,"mmvalue":json_data.data[i].mmvalue})
        }
        
        if(ques_type == 'radio'){
            data_payload.push({'qid': json_data.data[i].qid, 'qtype':json_data.data[i].qtype,'ans_required': json_data.data[i].ans_required,"answered":json_data.data[i].answered,"value":json_data.data[i].value,"others_data":json_data.data[i].others_data})
        }
        
    }
    
   
    
    metadata_payload.householdId=household
    metadata_payload.updatedTime=savetime
    metadata_payload.householdId=household
    metadata_payload.memberId=member
    metadata_payload.userid=localStorage.getItem("userid")
    metadata_payload.location=latlong
    metadata_payload.status="Completed"
    
    //alert("savetime"+savetime)
    
    //metadata_payload.push({'householdId': household, 'updatedTime':savetime,'memberId': member,"userid":localStorage.getItem("userid"),"location":latlong})
    data_payload.push({'metadata':metadata_payload})
     //document.getElementById('jsondata').innerHTML = JSON.stringify(json_data)
    
     document.getElementById('done_spinner').style.display = 'block'

		var xhttp = new XMLHttpRequest();
	    xhttp.onreadystatechange = function() {
	        if (this.readyState == 4 && this.status == 200) {
	          //console.log(this.responseText);
	          window.location.href = '/ysSurveyorStatus'
	        }
	    };
	    xhttp.open("POST", "/assessmentFinalSubmitJS", true);
	    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	    xhttp.send('data='+encodeURIComponent(JSON.stringify(data_payload)));

	    
    

	    console.log(JSON.stringify(data_payload)) 
        
        
        
        
	    

	}else if(flag == 1){
		alert('Please provide your response for the questions : '+ questions_to_be_answered)
	}else if(flag == 2){
		alert('Please answer all the numeric questions')
	}else if(flag == 3){
		alert('Please answer all the date questions')
	}else if(flag == 4){
		alert('Please answer all the selection questions')
	}else if(flag == 5){
		alert('Please answer all the questions')
	}else if(flag == 6){
		alert('Please answer all the checkbox questions')
	}
   
       
}

function on_submit(){
	var flag = 0

	var data_payload = []
    var questions_to_be_answered = []
    questions_to_be_answered = ""

	for(var i=0; i<json_data.data.length; i++){
		
		var ques_type = json_data.data[i].qtype
        //If the question has ans_required == true and answered == N, then that question must be answered by the user.
        //Else the submission of json data should happen
        
        if(json_data.data[i].ans_required == "true" && json_data.data[i].answered == "N" && (json_data.data[i].qid!='7.1' || json_data.data[i].qid!='63.1')){
            questions_to_be_answered = questions_to_be_answered + json_data.data[i].qid + ";"
            flag=1;
        }

    }

	if(flag == 0){
        // document.getElementById('jsondata').innerHTML = JSON.stringify(json_data)
        //alert("All answered")
        
        
        //alert(json_data);

		//var scores = calculate_score()

		/*localStorage.setItem('_stress_app_user_name', data_payload[0].selection_val)
		localStorage.setItem('_stress_app_work_stress_msg', scores.work_stress)
		localStorage.setItem('_stress_app_symptoms_msg', scores.symptoms)*/
		
		/*document.getElementById('done_spinner').style.display = 'block'

		var xhttp = new XMLHttpRequest();
	    xhttp.onreadystatechange = function() {
	        if (this.readyState == 4 && this.status == 200) {
	          //console.log(this.responseText);
	          window.location.href = '/ncdscreening_score'
	        }
	    };
	    xhttp.open("POST", "/add_ncdscreening_assessment", true);
	    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	    xhttp.send('data='+encodeURIComponent(JSON.stringify(data_payload)));

	    console.log(JSON.stringify(data_payload))*/
	    

	}else if(flag == 1){
		alert('Please provide your response for the questions : '+ questions_to_be_answered)
	}else if(flag == 2){
		alert('Please answer all the numeric questions')
	}else if(flag == 3){
		alert('Please answer all the date questions')
	}else if(flag == 4){
		alert('Please answer all the selection questions')
	}else if(flag == 5){
		alert('Please answer all the questions')
	}else if(flag == 6){
		alert('Please answer all the checkbox questions')
	}

}

function on_saveForLater(){  
    //getLocation();
    var today = new Date();
    var savetime=today.getDate()+"/"+(today.getMonth()+1)+"/"+today.getFullYear()+"-"+today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
    var latlong = document.getElementById('lat').value+","+document.getElementById('lon').value;
    var member = memberId;
    var household = householdId;
    var data_payload = []
    var metadata_payload = {}
    for(var i=0; i<json_data.data.length; i++){
        var ques_type = json_data.data[i].qtype
        if(ques_type == 'text' || ques_type == 'num' || ques_type == 'num_na' || ques_type == 'date'){
            data_payload.push({'qid': json_data.data[i].qid, 'qtype':json_data.data[i].qtype,'ans_required': json_data.data[i].ans_required,"answered":json_data.data[i].answered,"value":json_data.data[i].value})
        }
        
        if(ques_type == 'bp'){
            data_payload.push({'qid': json_data.data[i].qid, 'qtype':json_data.data[i].qtype,'ans_required': json_data.data[i].ans_required,"answered":json_data.data[i].answered,"sys_value":json_data.data[i].sys_value,"dia_value":json_data.data[i].dia_value})
        }
        
        if(ques_type == 'time'){
            data_payload.push({'qid': json_data.data[i].qid, 'qtype':json_data.data[i].qtype,'ans_required': json_data.data[i].ans_required,"answered":json_data.data[i].answered,"hhvalue":json_data.data[i].hhvalue,"mmvalue":json_data.data[i].mmvalue})
        }
        
        if(ques_type == 'radio'){
            data_payload.push({'qid': json_data.data[i].qid, 'qtype':json_data.data[i].qtype,'ans_required': json_data.data[i].ans_required,"answered":json_data.data[i].answered,"value":json_data.data[i].value,"others_data":json_data.data[i].others_data})
        }
        
    }
    
   
    
    metadata_payload.householdId=household
    metadata_payload.updatedTime=savetime
    metadata_payload.householdId=household
    metadata_payload.memberId=member
    metadata_payload.userid=localStorage.getItem("userid")
    metadata_payload.location=latlong
    metadata_payload.status="InProgress"
    
    //alert("savetime"+savetime)
    
    //metadata_payload.push({'householdId': household, 'updatedTime':savetime,'memberId': member,"userid":localStorage.getItem("userid"),"location":latlong})
    data_payload.push({'metadata':metadata_payload})
     //document.getElementById('jsondata').innerHTML = JSON.stringify(json_data)
    
     document.getElementById('done_spinner').style.display = 'block'

		var xhttp = new XMLHttpRequest();
	    xhttp.onreadystatechange = function() {
	        if (this.readyState == 4 && this.status == 200) {
	          //console.log(this.responseText);
	          window.location.href = '/ysSurveyorStatus'
	        }
	    };
	    xhttp.open("POST", "/assessmentSaveLaterJS", true);
	    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	    xhttp.send('data='+encodeURIComponent(JSON.stringify(data_payload)));

	    
    

	    console.log(JSON.stringify(data_payload))    
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
    
    //alert("document.getElementById('lat').value"+document.getElementById('lat').value)
    //alert("document.getElementById('lon').value"+document.getElementById('lon').value)
    //alert("document.getElementById('tps').value"+document.getElementById('tps').value)
 
   
  
     
}

function GetUrlParameter(sParam){
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
      
  </script>     

</head>    

<body class="login-page sidebar-collapse">
    <input type="hidden" name="lat" id ="lat">    
    <input type="hidden" name="lon" id ="lon">
    <input type="hidden" name="tps" id ="tps">
    <input type="hidden" name="assessmentdatajson" id ="assessmentdatajson">
    
  
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
          
             <!--<center><p style="padding-left: 15px; font-size: 0.5em;">JSON DATA: <span id="jsondata" style="font-weight: bold; padding-left: 15px; font-size: 1.2em;"></span></p></center>-->
            
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