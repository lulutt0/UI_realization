<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/css.css">
<!--Header CSS-->
<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="./css/css/header.css">
<title>HOPING!</title>

<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<style>
#form-commentInfo {
	/* position: relative; */
	width: 100%;
	border-top: 1px solid #ddd;
}

#comment-count {
	margin-bottom: 10px;
	margin-top: 15px;
	margin-left: 20px;
}

.button {
	margin-left: 880px;
}

.button :hover {
	background: #000;
	color: #fff;
}

#comment-input {
	width: 96%;
	height: 3.3em;
	margin-bottom: 10px;
	margin-top: 2px;
	margin-left: 20px;
}

#submit, #sub_del {
	display: inline-block;
	min-width: 50px;
	padding: 10px;
	border: 1px solid #ddd;
	border-radius: 19px;
	font-size: 1px;
}

#voteUp, #voteDown {
	width: 3.5em;
	height: 1.9em;
	background-color: aqua;
}

#comments {
	margin-top: 10px;
}

.eachComment {
	width: 50%;
	margin: 10px;
	padding: 0.5em;
	border-bottom: 1px solid #c1bcba;
}

.eachComment .name {
	font-size: 1.5em;
	font-weight: bold;
	margin-bottom: 0.3em;
	display: flex;
	justify-content: space-between;
}

.eachComment .inputValue {
	font-size: 1.2em;
	font-style: italic;
}

.eachComment .time {
	font-size: 0.7em;
	color: #c1bcba;
	font-style: oblique;
	margin-top: 0.5em;
	margin-bottom: 0.5em;
}

.eachComment .voteDiv {
	display: flex;
	justify-content: flex-end;
}

.eachComment .deleteComment {
	background-color: red;
	color: aliceblue;
}
</style>
</head>

<body>
	<!--header-->
	<div class="container-header">
		<!-- <nav class="navbar" style="text-d???ecoration: none; list-style-type: none; color:black"> -->
		<div class="navbar__logo"
			style="text-decoration: none; list-style-type: none;">
			<a href="#" id="header__a">HOPING<b style="color: #FFBF00">.</b></a>
		</div>
		<ul class="navbar__menu" id="navbar__menu__a">
			<li><a href="../job/company/CompanyList.jsp"><span>????????????</span></a></li>
			<li><a href="../job/company/CompanySelect.jsp"><span>????????????</span></a></li>
			<li><a href="../profile/profile/ResumeForm.jsp"><span>?????????</span></a></li>
			<li><a href="list.jsp"><span>Q&A</span></a></li>
			<li><a href="../profile/profile/profile.jsp"><span>?????????</span></a></li>
			<li class="login_out"><a href="../main/login.jsp"><span
					style="font-size: small;">Login/Bye</span></a></li>
		</ul>
	</div>
	<div class="container">
		<div class="board_wrap">
			<div class="board_title">
				<strong>????????????!</strong>
				<p>?????? ????????? ?????? ????????????</p>
			</div>
			<div class="board_view_wrap">
				<div class="board_view">
					<div class="title">??? ??????</div>
					<div class="info">
						<dl>
							<dt>??????</dt>
							<dd>1</dd>
						</dl>
						<dl>
							<dt>?????????</dt>
							<dd>?????????</dd>
						</dl>
						<dl>
							<dt>?????????</dt>
							<dd>2021.05.05</dd>
						</dl>
						<dl>
							<dt>??????</dt>
							<dd>01</dd>
						</dl>
					</div>
					<div class="cont">
						??? ????????? ???????????????<br> ??? ????????? ???????????????<br> ??? ????????? ???????????????<br> ???
						????????? ???????????????<br> ??? ????????? ???????????????<br> ??? ????????? ???????????????<br> ??? ?????????
						???????????????<br> ??? ????????? ???????????????
					</div>
				</div>

			</div>
			<div id="form-commentInfo">
				<div id="comment-count">??????</div>
				<input id="comment-input" placeholder="????????? ????????? ?????????.">
				<div class="button">
					<button id="submit">??????</button>
					<button id="sub_del">??????</button>
				</div>
			</div>
			<div id=comments></div>
			<div class="bt_wrap" id="btn_list">
				<a href="list.jsp" style="margin: center;">??????</a>
			</div>
		</div>
		<!-- footer -->
		<footer>
			<div class="container-fluid">
				<p class="copyright">?? HOPING COMPANY 2021</p>
			</div>
		</footer>
</body>

</html>