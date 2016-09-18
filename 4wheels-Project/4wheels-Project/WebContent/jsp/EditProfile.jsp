<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="busynesLogic.models.User"%>
<%@ page import="busynesLogic.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<style>
.ddl {
	top: 290px;
	left: 175px;
	width: 220px;
	height: 30px;
	border-radius: 5px;
	border: 1px solid;
}
</style>
<style>
.ddl2 {
	top: 230px;
	left: 400px;
}
</style>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<link rel="stylesheet" href="../common-files/css/bootstrap.min.css">
<link rel="stylesheet" href="../common-files/css/fonts-v3.css">
<link rel="stylesheet" href="../common-files/css/base-v4.css">
<link rel="stylesheet"
	href="../styles/properties-658144f9-0c3e-8baf-fca5-a1e02fd800fb.css">
</head>

<body>

	<div id="_1162">

		<div id="_1163">

			<div id="_1164" data-pagelink="HomePageFindCar" class="nm-label">
				<span id="_1165"> Home<br />
				</span>
			</div>

			<div id="_1166" data-pagelink="0643bef3-8d19-a14a-5405-03ab8048f78e"
				class="nm-label">
				<span id="_1167"> Add Car<br />
				</span>
			</div>

			<div id="_1168" data-pagelink="53df4c96-963c-9ce0-edb9-83fdf279daf5"
				class="nm-label">
				<span id="_1169"> Add Service<br />
				</span>
			</div>

			<div id="_1170" data-pagelink="c9679362-2c21-98bd-2957-685f655fd083"
				class="nm-label">
				<span id="_1171"> My Cars<br />
				</span>
			</div>

			<div id="_1172" data-pagelink="399e5e5b-29f7-9aac-9852-3183820f47bf"
				class="nm-label">
				<a id="_1173" href="#"> My Search<br />
				</a>
			</div>

			<a id="_1174" data-pagelink="HomePageFindCar" class="navbar-brand"
				href="#">Log out</a>

		</div>

		<i id="_1175">  </i>

		<div id="_1176" class="nm-label">
			<h1 id="_1177">
				Edit Profile<br />
			</h1>
		</div>
		<form name="editProfile" method="POST" action="../EditProfileServlet">
			<div id="_1178">
				<svg id="_1179"> <line id="_1180" x1="0" x2="966" y1="" y2="0" />
				</svg>
			</div>

			<div id="_1181" class="nm-label">
				<h3 id="_1182">
					User email : <br />
				</h3>
			</div>

			<div id="_1183" class="nm-label">
				<h3 id="_1184">
					Location <br />
				</h3>
			</div>

			<div id="_1185" class="nm-label">
				<h3 id="_1186">
					Name : <br />
				</h3>
			</div>

			<div id="_1187" class="nm-label">
				<h3 id="_1188">
					Password <br />
				</h3>
			</div>

			<div id="_1189" class="nm-label">
				<h3 id="_1190">
					New Password :<br />
				</h3>
			</div>

			<div id="_1191" class="nm-label">
				<h3 id="_1192">
					Repeat password : <br />
				</h3>
			</div>

			<div id="_1193" class="nm-label">
				<h3 id="_1194">
					<%
						User u = (User) (session.getAttribute("user"));
					%>
					<%=u.getEmail()%>
					<br />
				</h3>
			</div>

			<div class="ddl2">
				<h3>
					<%
						if (session.getAttribute("passwordErr") != null) {
					%>
					<%=session.getAttribute("passwordErr")%>
					<br />
					<%
						}
					%>
				</h3>
			</div>


			<select class="ddl" name="Location" id="converted_dropdown_2">
				<option value="Sofia">Sofia</option>
				<option value="Plovdiv">Plovdiv</option>
				<option value="Varna">Varna</option>
				<option value="Burgas">Burgas</option>
				<option value="Stara Zagora">Stara Zagora</option>
				<option value="Pleven">Pleven</option>
				<option value="Veliko Turnovo">Veliko Turnovo</option>
				<option value="Karlovo">Karlovo</option>
			</select> <input type="Password" id="_1217" name="oldPassword"
				placeholder="Old password" class="form-control" /> <input
				type="password" id="_1218" name="newPass" placeholder="new password"
				class="form-control" /> <input type="password" id="_1219"
				name=repeatPass " placeholder="repeat password" class="form-control" />
			<input type="text" id="_1220" name="username"
				placeholder=<%=u.getName()%> class="form-control" />

			<button id="_1222"
				data-pagelink="a94616db-cbb5-a44c-04e5-687c8cdab037"
				class="btn btn-default">Save changes</button>
		</form>
		<form name="editProfile" method="POST"
			action="../DeleteProfileServlet">
			<button id="_1223" data-pagelink="HomePageFindCar"
				class="btn btn-default">Delete Account</button>
		</form>

	</div>
	<script type="text/javascript" src="../common-files/js/require.min.js"
		data-main="../scripts/startup"></script>
</body>

</html>