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


var no_rows = 0;

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
 
});



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
    

function addFamilyMember(){
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
   
      
}

function activateAssessmentButtons(){
    
    
    var options_element_1 = document.getElementById('agegoup_1').value
    var options_element_2 = document.getElementById('agegoup_2').value
    var options_element_3 = document.getElementById('agegoup_3').value
    var options_element_4 = document.getElementById('agegoup_4').value
    var options_element_5 = document.getElementById('agegoup_5').value
   
   
    if(no_rows==0){
        if(options_element_1 == 'Yes') {
            document.getElementById('assessmentbutton1').style.display = 'block'
        }
        
    }
    
    if(no_rows==1){
        if(options_element_1 == 'Yes') {
            document.getElementById('assessmentbutton1').style.display = 'block'
        }
        if(options_element_2 == 'Yes') {
            document.getElementById('assessmentbutton2').style.display = 'block'
        }
    }
    
    if(no_rows==2){
         
        if(options_element_1 == 'Yes') {
            document.getElementById('assessmentbutton1').style.display = 'block'
        }
        if(options_element_2 == 'Yes') {
            document.getElementById('assessmentbutton22').style.display = 'block'
        }
        if(options_element_3 == 'Yes') {
            document.getElementById('assessmentbutton3').style.display = 'block'
        }
    }
    
    if(no_rows==3){
        if(options_element_1 == 'Yes') {
            document.getElementById('assessmentbutton1').style.display = 'block'
        }
        if(options_element_2 == 'Yes') {
            document.getElementById('assessmentbutton2').style.display = 'block'
        }
        if(options_element_3 == 'Yes') {
            document.getElementById('assessmentbutton3').style.display = 'block'
        }
        if(options_element_4 == 'Yes') {
            document.getElementById('assessmentbutton4').style.display = 'block'
        }
    }
    
    if(no_rows==4){
        if(options_element_1 == 'Yes') {
            document.getElementById('assessmentbutton1').style.display = 'block'
        }
        if(options_element_2 == 'Yes') {
            document.getElementById('assessmentbutton2').style.display = 'block'
        }
        if(options_element_3 == 'Yes') {
            document.getElementById('assessmentbutton3').style.display = 'block'
        }
        if(options_element_4 == 'Yes') {
            document.getElementById('assessmentbutton4').style.display = 'block'
        }
        if(options_element_5 == 'Yes') {
            document.getElementById('assessmentbutton5').style.display = 'block'
        }
    }
    
    document.getElementById('savehouseholdbutton').style.display = 'none'
    
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
          <div class="col-md-6 ml-auto mr-auto">
            <div class="card card-login">
              <div class="card-header card-header-rose text-center">
                <h4 class="card-title" style="padding-left: 3%; padding-right: 3%;">WHERE IS THE HOME LOCATED?</h4>
               
              </div>
                
                <center> <h4 class="title"><span id="member">HOUSEHOLD ID : HH-13</span></h4></center>
                
              <div class="card-body" style="padding-top: 15px; padding-bottom: 15px;">
                  
                  <table>
                    <tr>
                        <th>
                            <center><p style="padding-left: 15px; font-size: 1.0 em;">District : Kolar</p></center>
                        </th>
                        <th>
                            <center><p style="padding-left: 15px; font-size: 1.0em;">Taluka : Kolar</p></center>
                        </th>
                        
                    </tr>
                    <tr>
                        
                        <th>
                            <center><p style="padding-left: 15px; font-size: 1.0 em;">Village : Village</p></center>
                        </th>
                        <th>
                            <center><p style="padding-left: 15px; font-size: 1.0em;">Locale : Rural</p></center>
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
              
              <!--zHere-->
        
              <div class="card card-login" id="member2">
              <!--<div class="card-header card-header-rose text-center">
                <h4 class="card-title" style="padding-left: 3%; padding-right: 3%;">FAMILY MEMBER</h4>
               
              </div>-->
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
              
        <!-- Member 6 -->
              <div class="card card-login" id="member2">
              <!--<div class="card-header card-header-rose text-center">
                <h4 class="card-title" style="padding-left: 3%; padding-right: 3%;">FAMILY MEMBER</h4>
               
              </div>-->
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
              
              <br>
              <!--New -->
              
      

      
              
    
              <div class="row" style="margin-top: 15px; margin-bottom: 50px;">
        <div class="col-md-6 ml-auto mr-auto text-center">
           
          
          <a href="/ysHome">Go To Home</a>
          
        <br>
            <br>
          <a href="/ysSurveyorStatus">Go Back</a>
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