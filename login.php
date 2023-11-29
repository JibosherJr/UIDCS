<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body>



<form method="post" method="login.php">
  <div class="imgcontainer">
    <img src="assets/images/unb_logo.png" alt="Logo" class="logo">
  </div>

  <div class="textBoxdiv">
    <input type="text" placeholder="Enter Username" name="username" required>

<div class="textBoxdiv">
    <input type="password" placeholder="Enter Password" name="password" required>
    <div>     

    <input type="submit" value= "Login" class="loginBtn" name="loginBtn">
    
  </div>
</html>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="https://www.unb.ca/its/get-it-help.html">password?</a></span>
  </div>
</form>

</body>
</html>

<?php
$conn = mysqli_connect("localhost","root","");
if(isset($_POST['loginBtn'])){
    $username=$_POST['username'];
    $password=$_POST['password'];
    $sql= "SELECT * FROM websitelogin.logindetails WHERE username='$username'";
    $result = mysqli_query($conn,$sql);
    while($row = mysqli_fetch_assoc($result)){
        $resultedPassword = $row['password'];
        if($password==$resultedPassword){
            if($username=="admin"){
                header('Location:admin.html');
            }
            elseif($username=="department"){
                header('Location:department.html');
            }
            elseif($username=="student"){
                header('Location:student.html');
            }
            elseif($username=="faculty"){
                header('Location:faculty.html');
            }
        }
        else{
            echo "<script>
                alert('Login unsucceful');
            <script>";
        }
    }
}
?>

