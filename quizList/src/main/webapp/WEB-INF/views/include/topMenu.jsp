<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.nav-box {
	background-color: white;
	height: 80px;
	display: flex;
}

.nav-content {
	display: flex;
	justify-content: space-between;
}

.nav-box-right {
	display: flex;
}

.top-menu, .top-logo {
	align-self: center;
}

.top-logo {
	font-size: 45px;
}

.top-menu {
	margin-left: 30px;
}

.nav-box a {
	color: navy;
	font-weight: 600;
	text-decoration: none;
}

.nav-box-right a {
	color: rgb(66, 87, 178);
	font-weight: 500;
	font-size: 20px;
}

.nav-box-right a:hover {
	text-decoration: none;
	color: navy;
	border-bottom: 2px solid navy;
}

.login {
	background-color: navy;
	color: white;
}

.join {
	background-color: rgb(247, 213, 95);
}

.login:hover {
	background-color: rgb(66, 87, 178);
	color: white;
}

.join:hover {
	background-color: rgb(229, 181, 25);
}
</style>

<nav class="fixed-top">
	<div class="nav-box">
		<div class="container nav-content">
			<div class="nav-box-left top-logo">
				<a href="#">QuizList</a>
			</div>
			<div class="nav-box-right">
				<div class="top-menu">
					<a href="#">QUIZ</a>
				</div>
				<div class="top-menu">
					<a href="#">BOARD</a>
				</div>
				<div class="top-menu">
					<a href="#">MY INFO</a>
				</div>
				<button class="top-menu btn login">로그인</button>
				<button class="top-menu btn join">회원가입</button>
			</div>
		</div>
	</div>
</nav>