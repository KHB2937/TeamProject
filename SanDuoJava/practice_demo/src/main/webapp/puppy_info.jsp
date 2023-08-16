<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Puppy Info</title>
	<link rel="stylesheet" href="css/register.css">
</head>
<body>
	<div class="container">
		<!-- Puppy Info -->
		<div class="container__form container--puppy-info">
			<form action="register1" method="post" class="form" id="puppyInfoForm">
				<h2 class="form__title">Puppy Info</h2>
				<input type="text" placeholder="Puppy Name" class="input" id="dogname" name="dogname" required/>
				<input type="text" placeholder="Puppy Species" class="input" id="breed" name="breed" required/>
				<select class="input" id="sex" name ="sex" required>
					<option value="Male">Male</option>
					<option value="Female">Female</option>
				</select>
				<select class="input" id="size" name ="size" required>
					<option value="SMALL">Small</option>
					<option value="MEDIUM">Medium</option>
					<option value="LARGE">Large</option>
				</select>
				<input type="number" placeholder="Puppy Age" class="input" id="age", name="age" required/>
				<button class="btn" type="submit" id="submitBtn">Submit</button>
			</form>
		</div>

		<!-- Overlay -->
		<div class="container__overlay">
			<div class="overlay">
				<div class="overlay__panel overlay--right">
					<button class="btn" id="backBtn">Back</button>
				</div>
			</div>
		</div>
	</div>

	<script src="js/register.js"></script>
	<script>
		// back button
		document.getElementById("backBtn").addEventListener("click", function() {
			window.location.href = "Register.jsp";
		});
</body>
</html>
