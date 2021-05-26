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
var no_rows = 0;
var row;
var mainArr = [];
var tmpArr = [];
    
    

$(document).ready(function(){
  var user_name = localStorage.getItem("user_name");
 
  if(!user_name){
    window.location.href = "/login";
  }  
  
 var no_rows = 0;  
   

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

var household = GetUrlParameter('householdId');
var dist = '';
var tq = '';
var district = '';
var taluq = '';
var village = '';
var locale = '';
var members;
 console.log(household);
 var request = { 
    "userid": localStorage.getItem("userid"),
    "householdId": household            
              }
    $.ajax({
    type: "POST",
    url: '/householdInfo',
    data: JSON.stringify(request),
    contentType: "application/json",
    success: function (data) {
      $("#spinner").fadeOut("slow");
      // console.log(data);
      var json = $.parseJSON(data);
      if (json.msg == "Success"){  


       console.log(json.data);
       dist = json.data.district;
       tq = json.data.taluka;
       household = json.data.householdId;
       village = json.data.villageOrward;
       locale = json.data.locale;
       members = json.data.members;
       size_of_members = members.length;
       var num_rows = size_of_members - 1;

       console.log(size_of_members);
       console.log(members);

       $('#houseid').val(household);

      // alert(options_element_1);
      var htmldata = '';
        $.each(members , function(index, item) { 
         
            index += 1;
            buttontag = '';
            if(item.memberInterviewStatus == 'TobeStarted'){
              buttontag += '<button class="btn btn-rose btn-raised progress-btn" style="" >START INTERVIEW</button>';
            }
           if(item.memberInterviewStatus == 'InProgress'){
              buttontag += '<button class="btn btn-rose btn-raised progress-btn" style="" >CONTINUE INTERVIEW</button>';
            }
            if(item.memberInterviewStatus == 'Completed'){
              buttontag += '<button class="btn btn-success btn-raised progress-btn" style="" disabled>COMPLETE</button>';
            }
            if(item.memberInterviewStatus == 'Not Applicable'){
              buttontag += '<button class="btn btn-info btn-raised progress-btn" style="" disabled>NOT APPLICABLE</button>';
            }
            

            htmldata += '<div class="card card-login" id="member1"><center> <h4 class="title"><span id="member">MEMBER'+index+'</span></h4></center><div class="card-body" style="padding-top: 15px; padding-bottom: 15px;"><table><tr><th><center><p style="padding-left: 15px; font-size: 1.0 em;">Name : '+item.name+'</p></center></th><th><center><p style="padding-left: 15px; font-size: 1.0em;">Gender : '+item.gender+'</p></center></th></tr><tr><th><center><p style="padding-left: 15px; font-size: 1.0 em;">Age between 15 and 30? : '+item.agein15to30+'</p></center></th><th><center>'+buttontag+'<input type="hidden" name="memberid" value="'+item.memberId+'"></center></th></tr></table></div></div>'

          
    
        });
         $("#familydata").html(htmldata);   
            
           
   

       var myJSON = JSON.stringify(country_state_city);
        var data = JSON.parse(myJSON);
  // console.log(data);

  $.each(data, function(key, value){
    if(value.short_name == dist){
      district = value.name;
      console.log
      $.each(value.taluks,function(key,values){
        if(values.short_name == tq){
          taluq = values.name;
        }

      });
    }
   });


  


  console.log(district + " " + taluq);
  $("#householdid").html("Household : " +household);
$("#districtid").html("District : " +district);
$("#taluqid").html("Taluka : " +taluq);
$("#villageid").html("Village : " +village);
$("#localeid").html("Locale : " +locale);
        console.log("Success");



      }
    },
    error: function(data){
    $("#spinner").fadeOut("slow");
    alert("Technical Error!");
    }

    });

      $(document).on('click', '.progress-btn', function(){
                var memberid = $(this).closest("tr").find("input[name='memberid']").val();
                var houseid = $('#houseid').val();
                
                var memberId = memberid.split("IND_");
                var householdId = houseid.split("HH_");
                // alert(memberId[1]  +" "+ householdId[1]);
                var url = "/ysAssessment?memberId=" + memberId[1] + "&householdId=" + householdId[1];
            window.location.href = url;


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
          <div class="col-md-6 ml-auto mr-auto" >
            <div class="card card-login">
              <div class="card-header card-header-rose text-center">
                <h4 class="card-title" style="padding-left: 3%; padding-right: 3%;">WHERE IS THE HOME LOCATED?</h4>
               
              </div>
                
                <center> <h4 class="title" id="householdid"></h4></center>
                <input type="hidden" name="houseid" id="houseid" value="">
                
              <div class="card-body" style="padding-top: 15px; padding-bottom: 15px;">
                  
                  <table>
                    <tr>
                        <th>
                            <center><p style="padding-left: 15px; font-size: 1.0em;" id="districtid"></p></center>
                        </th>
                        <th>
                            <center><p style="padding-left: 15px; font-size: 1.0em;" id="taluqid"></p></center>
                        </th>
                        
                    </tr>
                    <tr>
                        
                        <th>
                            <center><p style="padding-left: 15px; font-size: 1.0em;" id="villageid"></p></center>
                        </th>
                        <th>
                            <center><p style="padding-left: 15px; font-size: 1.0em;" id="localeid"></p></center>
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
              
             
              <div id="familydata"></div>
              <!-- 
              <div class="card card-login" id="member1">
             <center> <h4 class="title"><span id="member">MEMBER 1</span></h4></center>
              <div class="card-body" style="padding-top: 15px; padding-bottom: 15px;">
                  
                  <table>
                    <tr>
                        <th>
                            <center><p style="padding-left: 15px; font-size: 1.0 em;">Name : Raja</p></center>
                        </th>
                        <th>
                            <center><p style="padding-left: 15px; font-size: 1.0em;">Gender : Male</p></center>
                        </th>
                        
                    </tr>
                    <tr>
                        
                        <th>
                            <center><p style="padding-left: 15px; font-size: 1.0 em;">Age between 15 and 30? : Yes</p></center>
                        </th>
                        <th>
                            <center><button class="btn btn-green btn-raised" style="" id="assessmentbutton1" >INTERVIEW COMPLETED</button></center>
                        </th>
                    </tr>
                 
                </table>
                  
                  
                  <br>        
                  
          </div>
        </div>
              
              <br>
              
             
        
              <div class="card card-login" id="member2">
            
             <center> <h4 class="title"><span id="member">MEMBER 2</span></h4></center>
              <div class="card-body" style="padding-top: 15px; padding-bottom: 15px;">
                  
                  <table>
                    <tr>
                        <th>
                            <center><p style="padding-left: 15px; font-size: 1.0 em;">Name : Rani</p></center>
                        </th>
                        <th>
                            <center><p style="padding-left: 15px; font-size: 1.0em;">Gender : Female</p></center>
                        </th>
                        
                    </tr>
                    <tr>
                        
                        <th>
                            <center><p style="padding-left: 15px; font-size: 1.0 em;">Age between 15 and 30? : Yes</p></center>
                        </th>
                        <th>
                            <center> <a href="/ysAssessment">
    <button class="btn btn-rose btn-raised" style="" id="assessmentbutton5" onclick="goToAssessment()">START INDIVIDUAL ASSESSMENT</button>
          </a></center>
                        </th>
                    </tr>
                    
                 
                 
                 
                 
                </table>
                  
                  
                  <br>        
                  
          </div>
        </div>
              <br>
              
       
              <div class="card card-login" id="member2">
             
             <center> <h4 class="title"><span id="member">MEMBER 3</span></h4></center>
              <div class="card-body" style="padding-top: 15px; padding-bottom: 15px;">
                  
                  <table>
                    <tr>
                        <th>
                            <center><p style="padding-left: 15px; font-size: 1.0 em;">Name : Siddhu</p></center>
                        </th>
                        <th>
                            <center><p style="padding-left: 15px; font-size: 1.0em;">Gender : Female</p></center>
                        </th>
                        
                    </tr>
                    <tr>
                        
                        <th>
                            <center><p style="padding-left: 15px; font-size: 1.0 em;">Age between 15 and 30? : No</p></center>
                        </th>
                        <th>
                            <center> 
    <button class="btn btn-green btn-raised" style="" id="assessmentbutton5" >NO INTERVIEW REQUIRED</button>
          </center>
                        </th>
                    </tr>
                    
                 
                 
                 
                 
                </table>
                  
                  
                  <br>        
                  
          </div>
        </div>
              
              <br> -->
            
              
      

      
              
    
              <div class="row" style="margin-top: 15px; margin-bottom: 50px;">
        <div class="col-md-6 ml-auto mr-auto text-center">
           
          
          <a href="/ysHome">Go To Home</a>
          
        <br>
            <br>
          <a href="/ysSurveyorStatus">Go Back</a>
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
