<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Main Screen</title>
<style>
body {
	width: 1280px;
	height: 1024px;
	border: 1px solid;
	margin: 0;
	font-family: Arial, sans-serif;
}

header {
	/* padding-right: ; */
	width: 100%;
	height: 100px;
	background-color: #d2b48c;
	line-height: 100px;
	font-size: 24px;
	float: left;
	text-align: center;
}

nav {
	float: left;
	width: 100%;
	height: 50px;
	/* display: flex; */
	background-color: #bdb76b;
}

nav ul {
	/* float: left; */
	list-style-type: none;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	width: 100%;
}

nav ul li {
	margin: auto;
	margin-right: auto;
}

li a {
	display: block;
	color: white;
	padding: 14px 20px;
	text-decoration: none;
}

li a:hover {
	background-color: #8b4513;
}

section {
	width: 50%;
	height: 400px;
	float: left;
	background-color: #fff8dc;
	padding: 20px;
	float: left;
	box-sizing: border-box;
}

aside {
	float: left;
	width: 50%;
	height: 400px;
	float: left;
	/* background-color: #ffe4c4;  */
	padding: 20px;
	box-sizing: border-box;
}

#display {
	clear: both;
	width: 100%;
	height: 430px;
	background-color: #faebd7;
	margin-top: 20px;
}

footer {
	width: 100%;
	height: 44px;
	background-color: #d2b48c;
	text-align: center;
	line-height: 44px;
}

img {
	float: left;
}

body, h1, table {
	text-align: center;
	margin: 0;
	padding: 0;
}

body {
	font-family: Arial, sans-serif;
}

.board {
	width: 200%;
	margin: 0 auto;
	padding: 20px;
}

.post-list {
	border-collapse: collapse;
	width: 100%;
	border: 1px solid #ddd;
	margin-bottom: 20px;
}

.post-list th, .post-list td {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: center;
}

.post-list th {
	background-color: #f2f2f2;
}

.page-nav {
	text-align: center;
}

.page-nav a { 
	display: inline-block;
	margin: 0 5px;
	padding: 5px 10px;
	text-decoration: none;
	border: 1px solid #ddd;
	border-radius: 5px;
	color: #333;
}

.page-nav .page {
	background-color: #f2f2f2;
}

.page-nav a:hover {
	background-color: #ddd;
}

.page-nav .prev, .page-nav .next {
	font-weight: bold;
}
</style>
</head>
<body>
	<header>News page</header>

	<nav>
		<ul>
			<li><a class="active" href="#home">Home</a></li>
			<li><a href="#news">News</a></li>
			<li><a href="#contact">Contact</a></li>
			<li><a href="#about">About</a></li>
		</ul>
	</nav>


	<section>
		<link rel="stylesheet" href="styles.css">
		<title>게시판</title>
		</head>
		<body>
			<div class="board">
				<h1>게시판</h1>
				<table class="post-list">
					<thead>
						<tr>
							<th>번호</th>
							<th>날짜</th>
							<th>제목</th>
							<th>글여부</th>
							<th>수정/삭제</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td></td>
							<td></td>
							<td><a href="#"></a></td>
							<td></td>
						</tr>
						<!-- Add more rows as needed -->
					</tbody>
				</table>
				<div class="page-nav">
					<a href="#" class="prev">이전</a> <a href="#" class="page">1</a> <a
						href="#" class="page">2</a> <a href="#" class="page">3</a>
					<!-- Add more page numbers as needed -->
					<a href="#" class="next">다음</a>
				</div>
			</div>
	</section>



	<aside></aside>

	<div id="display">
		<h2>Display Area</h2>
		<p>This area can be used for various dynamic content like
			notifications or messages.</p>
		<img src="./img/sectionback5.PNG.jpg" width="520" height="auto">
		<img src="./img/pexels-ahmetyuksek-28971111.jpg" width="520"
			height="auto"> <img src="./img/sectionback1.PNG.jpg"
			width="240" height="346">
	</div>



	<footer>2024-10-30 윤율</footer>
</body>
</html>
