<script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<style>


/* Important part */
.modal-dialog{
    overflow-y: initial !important
}
.modal-body{
    height: 100%;
    overflow-y: auto;
}
</style>
<?php
session_start();
if(!isset($_SESSION['uid5'])){
  header('../index.php');
}
?>
<?php
include '../fonts.php';
include 'inheader.php';
 ?>
<center><h2 style='float:left;font-family:Cursive;margin-left:25%;'>Search For Observation Of Attendance Of Classes</h2></center>
<br><br><select id="classes" style="width: 20%;font-size:20px;height: 40px;margin-left:25%;">
<option value=''>Select Class</option>
  <option>Nursery</option>
  <option>L.K.G</option>
  <option>U.K.G</option>
<?php
for($i=1;$i<=12;$i++){
  echo "<option>$i"."th Grade</option>";
}
?>
</select>
<br><br><select id="sections" style="float:left;width: 20%;font-size:20px;height: 40px;margin-left:25%;">
<option value=''>Select Sections</option>
  <option>A</option>
  <option>B</option>
  <option>C</option>
  <option>D</option>
  <option>E</option>

</select>
<br><br><br>
<div id="container" style="position:absolute;right:5%;font-family:Roboto;">

</div>
<script>
$('#classes' && '#sections').on('change',function(){
if($('#classes').val()!=''&&$('#sections').val()!=''){
$.post('attandence_observescript.php',{
  class : $('#classes').val(),
  sec : $('#sections').val(),
  observe_attend : "200"
},function(data){
$('#container').html(data);
})
}
})
</script>
