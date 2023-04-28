<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Member List</title>
</head>
<body>
	<h1>Member List</h1>

	<ul>
		<c:forEach var="member" items="${memberList}">
			<li>${member.username} (nickname ${member.nickname})</li>
		</c:forEach>
	</ul>

	<form action="register" method="post">
		<input type="text" name="username" placeholder="Enter a new name">
		<input type="text" name="nickname" placeholder="Enter a new age">
		<button type="submit">Add Person</button>
	</form>

	<p><a href="./">Go back to the home page</a></p>

</body>
</html>