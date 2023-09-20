<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
body{

  background-color: #B9E9FC;
}
.box{
  background-color:#FFF2CC  ;
  border: 2px solid black;
  padding-left: 1em; 
  width:70%;
  height:60%;
}



      </style>
</head>
<body>
    

<?php
$servername = "localhost";
$username = "root";
$password = "1478";
$search = $_GET['search'];
  $conn = new PDO("mysql:host=$servername;dbname=db_assgn1", $username, $password);
  // set the PDO error mode to exception
  
echo'<div class="box">';
echo "<h2>$search</h2>"."<br>";
$sql = "SELECT * FROM words where word='$search'";
foreach ($conn->query($sql) as $row) {
    $id = $row['word_id'];
}

$num = 1;

$sql = "SELECT * FROM living where word_id=$id";
foreach ($conn->query($sql) as $row) {

echo "<br></n>";
    $image=$row['image'];
    echo '<img src="data:image/jpeg;base64,' . base64_encode($image).'">';
}

$sql = "SELECT * FROM meaning where word_id=$id";
foreach ($conn->query($sql) as $row) {


  echo "<h3>Meaning $num :</h3>".$row['meaning'];
  echo "<br>";
  $num = $num + 1;
}

$ji=1;

$sql = "SELECT * FROM pro_syll where word_id=$id";
foreach ($conn->query($sql) as $row) {
  echo   "<h3>Pronunciation $ji </h3> ".$row['pronunciation'];
  echo "<br></n>";
  echo   "<h3>Syllable $ji</h3> ".$row['syllable'];
  echo "<br></n>";
  $ji = $ji + 1;

}



$zo = 1;

$sql = "SELECT * FROM parts_speech where pos_id=$id";
foreach ($conn->query($sql) as $row) {
  echo   "<h3>Pos $zo </h3>.".$row['pos'];
  echo "<br></n>";
  $zo += 1;
}
$bye = 1;

$sql = "SELECT * FROM example where word_id=$id";
foreach ($conn->query($sql) as $row) {
  echo   "<h3>Example $bye</h3>".$row['example'];
  echo "<br></n>";
  $bye = $bye + 1;

}
$lo = 1;
$sql = "SELECT * FROM synonym_ inner join words on synonym_.synonym_id=words.word_id  where meaning_id=$id";
foreach ($conn->query($sql) as $row) {
  echo   "<h3>S ynonym $lo </h3> ".$row['word'];
  echo "<br></n>";
  $lo += 1;

}
$joke = 1;
$sql = "SELECT * FROM antonym inner join words on antonym.antonym_id=words.word_id where meaning_id=$id";
foreach ($conn->query($sql) as $row) {
  echo   "<h3>Antonym $joke</h3>  ".$row['word'];
  echo "<br></n>";
  $joke = $joke + 1;
}

$hi = 1;
$sql = "SELECT * FROM hindi where word_id=$id";
foreach ($conn->query($sql) as $row) {
  echo   " <h3>Hindi $hi </h3> ".$row['hindi_word'];
  echo "<br></n>";
  $hi = $hi + 1;

}
$hii = 1;

$sql = "SELECT * FROM punjabi where word_id=$id";
foreach ($conn->query($sql) as $row) {
  echo   "<h3>Punjabi $hii </h3>  ".$row['punjabi_word'];
  echo "<br></n>";
  $hii = $hii + 1;

}
$boo = 1;
$sql = "SELECT * FROM bengali where word_id=$id";
foreach ($conn->query($sql) as $row) {
  echo   "<h3>Bengali $boo </h3>  ".$row['bengali_word'];
  echo "<br></n>";
  $boo = $boo + 1;
}


$sql = "SELECT * FROM living where word_id=$id";
foreach ($conn->query($sql) as $row) {
  echo   "<h3>Scientific Name</h3> ".$row['scientific_name'];

  
        

  echo'</div>';

  
}


?>
</body>
</html>
