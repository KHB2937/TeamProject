<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Registration Form</title>
	<link rel="stylesheet" href="css/register.css">
</head>
<body>
	<div class="container right-panel-active">
		<!-- Sign Up -->
		<div class="container__form container--signup">
			<form action="register" method="post" class="form" accept-charset="UTF-8">
                <h2 class="form__title">Sign Up</h2>
                <input type="text", id = "username", name ="username" placeholder="User" class="input" />
                <input type="email", id = "email", name= "email", placeholder="Email" class="input" />
                <input type="password" id = "password", name = "password", placeholder="Password" class="input" />
                <button type="submit" class="btn" id="signUpBtn12">Sign Up</button>
                <p>Already have an account? <a href="#" id="signInLink">Sign in</a></p>
                <p>Back to home <a href="index.jsp" id="signInLink">Home</a></p>
			</form>
		</div>

		<!-- Sign In -->
		<div class="container__form container--signin">
			<form action="login" method = "post" class="form" id="form2"> <!-- login -->
				<h2 class="form__title">Sign In</h2>
				<input type="email" name = "email" placeholder="Email" class="input" />
				<input type="password" name = "password" placeholder="Password" class="input" />
				<a href="#" class="link">Forgot your password?</a>

				<button type = "submit" class="btn">Sign In</button>
				<p>Don't have an account? <a href="#" id="signUpLink">Sign up</a></p>
			</form>
		</div>



		<!-- Overlay -->
		<div class="container__overlay">
			<div class="overlay">
				<div class="overlay__panel overlay--left">
					<button class="btn" id="signIn">Sign In</button>
				</div>
				<div class="overlay__panel overlay--right">
					<button class="btn" id="signUp">Sign Up</button>
				</div>
			</div>
		</div>
	</div>

	<script src="js/register.js"></script>
</body>
</html>
