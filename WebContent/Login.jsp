<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
  <meta charset="UTF-8">
  <title>Login Form</title>
  <!--<script src="https://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>-->


  
  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Nunito:400,300,700'>

      <link rel="stylesheet" href="css/style_login.css">

  <style>
  .button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 10px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}


.button2 {
    background-color: #aed6f1; 
    color: black; 
    border: 2px solid #e7e7e7;
}

.button2:hover {
    background-color:008CBA;
    color: #555555;
}

}
  </style>
</head>

<body style="background-color:#aed6f1 ">
	<table border="0" align="center" width="100%" height="100px">
<tr><td width="100px"><img src="logo.png" style="height:100px;width:150px;"/></td></tr>
</table>
  <div class="container">
  <div class="form-container flip">
    <form class="login-form" action="userLogin.jsp">
      <h3 class="title">LOGIN</h3>
      <div class="form-group" id="username">
        <input class="form-input" tooltip-class="username-tooltip" placeholder="Username" id="email" name="uname" required="true"></input>
        
      </div>
      <div class="form-group" id="password">
        <input type="password" class="form-input" tooltip-class="password-tooltip" name="pass" placeholder="Password"></input>
      
      </div>
      <div class="form-group">
        <button type="submit"  class="button button2"><b>LOGIN</b></button>
        <input class="remember-checkbox"type="checkbox"></input>
        <p class="remember-p">Remember me</p>
      </div>
    </form>
     </div>
</div>
  <!--<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.2/Chart.min.js'></script>
<script src='https://code.jquery.com/jquery-2.1.4.min.js'></script>

    <script src="js/index.js"></script>-->

</body>
</html>
