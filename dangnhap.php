<?php 
session_start();
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <title></title>
    <style type="text/css">
    body{
      margin: auto;
      background-color: rgb(214, 248, 248);
      background-image: url(https://mir-s3-cdn-cf.behance.net/projects/404/c484cb93479947.Y3JvcCw4MDgsNjMyLDAsMA.jpg);
      background-size:  cover;
    
    }
      .login{
        background-color: #fff;
        width: 400px;
        padding: 25px;
        border-radius: 8px;
        margin: auto;
        transform: translateY(150%);
      }
      button a{
        text-decoration: none;
        color: black;
      }
    </style>
</head>
<body>

        <a href="index.php"><img src=" https://pbs.twimg.com/media/EiOLaYbX0AA5S6S.jpg" width="100" height="100" /></a>
        

<form method ="POST">
  <div class="login">
    <table>
      <tr>
        <td>UserName</td>
        <td><input type="text" name="usersname"></td>
      </tr>
      <tr>
        <td>Password</td>
        <td><input type="PASSWORD" name="PASSWORD"></td>
      </tr>
      <tr>
        <td><input type="submit" name="login" value="Login"></td>
        <td>
          <button>
          <li><a href="registration.php">Registration</a></li>

            </button>
        </td>
      </tr>
    </table>

  </div>
</form>
  <?php 
  //Kết nối theo Mysqli procedural
  $connect = mysqli_connect('3.132.234.157', 'minhtuan', 'jinx0902', 'tuan02');
  if($connect){
    echo " ok";
  }
  else{
    echo"Kết nối thất bại";
  }
    // Nếu click vào nút login thì mới thực hiện 
    if(isset($_POST['login'])){
      $UserName= $_POST['usersname'];
      $PASSWORD =$_POST['PASSWORD'];
      // Truy vấn từ bảng user cột username = giá trị username nhập từ form và cột password = giá trị password nhập từ form
      $sql = "SELECT * FROM users WHERE usersname ='$UserName' AND PASSWORD = '$PASSWORD'";
      // Thực thi truy vấn
      $result = mysqli_query($connect, $sql);
      // Trả về kết quả , chính là các dòng được truy vấn
      $row = mysqli_num_rows($result);
      // Nếu $row > 0 --> có trên 1 dòng trong CSDL trùng với dữ liệu nhập vào form -> đăng nhập thành công 
    if($row>0){
    echo "<script> alert('Đăng nhập thành công')</script>";
    header("location: test1.php");
    //Lưu tên đăng nhập lại vào biến toàn cục $_SESSION
    $_SESSION['usersname'] = $usersname;
  }
  else{
    echo"<script>alert('Tên đăng nhập hoặc mật khẩu không đúng')</script>";
  }
  }
  ?>
</form>
</body>
</html>