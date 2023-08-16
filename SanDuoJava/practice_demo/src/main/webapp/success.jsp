<!DOCTYPE html>
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
		<!-- Success -->
		<div class="container__form container--success">
			<h2 class="form__title">Success!</h2>
			<img src="https://cdn.pixabay.com/photo/2016/10/10/01/49/hook-1727484_960_720.png" alt="success image" class="success-image", width="300px">
			<p>Welcome, <%= request.getParameter("email") %>!</p>
			<p>Back to home <a href="index.jsp" id="homeLink">Home</a></p>
		</div>
	</div>

	<script>
		setTimeout(function() {
			window.location.href = "index3.jsp";
		}, 3000);
	</script>
</body>
</html>


