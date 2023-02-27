<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp Form.aspx.cs" Inherits="Shandling.SignUp_Form" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>SignUp Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="Style.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
<!-- //web font -->
	<style>

	</style>
</head>
<body>
	<!-- main -->
	<div class="main-w3layouts wrapper">
		<h1>Creative SignUp Form</h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
				<form runat="server" method="post">
<%--					<input class="text" type="text" name="id" placeholder="id" runat="server" required="">--%>
					<asp:TextBox ID="id" type="text" runat="server" placeholder="id"  required=""></asp:TextBox><br />
<%--					<input class="text email" type="text" name="email" placeholder="Email" runat="server" required="">--%>
					<asp:TextBox ID="email" type="text" runat="server" placeholder="Email"  required=""></asp:TextBox><br />

<%--					<input class="text" type="password" name="password" placeholder="Password" runat="server" required="">--%>
					<asp:TextBox ID="password" type="password" runat="server" placeholder="Password"  required=""></asp:TextBox><br />

<%--					<input class="text w3lpass" type="text" name="accesslevel" placeholder="accesslevel " runat="server" required="">--%>
					<asp:TextBox ID="cpassword" type="text" runat="server" placeholder="Confirm Password"  required=""></asp:TextBox><br />

<%--					<input class="text w3lpass" type="text" name="name" placeholder="Name" runat="server" required="">--%>
					<asp:TextBox ID="accesslevel" type="text" runat="server" placeholder="AccessLevel"  required=""></asp:TextBox><br />

					<asp:TextBox ID="name" type="text" runat="server" placeholder="ENTER UR Name"  required=""></asp:TextBox><br />


					<asp:FileUpload ID="FileUpload1" runat="server" /><br />
					<div class="wthree-text">
						<label class="anim">
							<input type="checkbox" class="checkbox" required="">
							<span>I Agree To The Terms & Conditions</span>
						</label>
						<div class="clear"> </div>
					</div>
<%--					<input Button ID="Button1" type="submit" runat="server" value="SIGNUP">--%>
					<asp:Button ID="SIGNUP" runat="server" Text="SIGNUP"  type="submit" OnClick="SIGNUP_Click"/>
				</form>
				<p>have an Account? <a href="LogIn Form.aspx"> Login Now!</a></p>
			</div>
		</div>

		<ul class="colorlib-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
	<!-- //main -->
</body>
</html>
