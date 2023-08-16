
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Login Success</title>
	<link rel="stylesheet" href="css/register.css">
	<style>
		.container {
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
			height: 100%;
			width: 100%;
			background-color: #f2f2f2;
			font-family: Arial, sans-serif;
		}

		.container__form {
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
			text-align: center;
		}

		.form__title {
			margin-bottom: 20px;
			font-size: 36px;
			color: #333;
		}

		.success-image {
			max-width: 100%;
			margin-bottom: 20px;
		}

		p {
			font-size: 24px;
			color: #666;
		}

		a {
			color: #007bff;
			text-decoration: none;
		}
	</style>
</head>
<body>
	<div class="container">
		<!-- Failure -->
		<div class="container__form container--success">
			<h2 class="form__title">Failure!</h2>
			<img src="https://cdn.pixabay.com/photo/2017/02/12/21/29/false-2061132_960_720.png" alt="fail image" class="fail-image", width="300px">
			<p>Please check your password or ID</p>
			<p>Back to Sign In <a href="Register.jsp" id="homeLink">Sign In</a></p>
		</div>
	</div>

	<script>
		setTimeout(function() {
			window.location.href = "Register.jsp";
		}, 3000);
	</script>
</body>
</html>
