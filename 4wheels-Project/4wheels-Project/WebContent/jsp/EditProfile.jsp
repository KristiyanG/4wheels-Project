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
 <script>
        function makeFullScreen() {
         var divObj = document.getElementById("theImage");
       //Use the specification method before using prefixed versions
      if (divObj.requestFullscreen) {
        divObj.requestFullscreen();
      }
      else if (divObj.msRequestFullscreen) {
        divObj.msRequestFullscreen();            
      }
      else if (divObj.mozRequestFullScreen) {
        divObj.mozRequestFullScreen();
      }
      else if (divObj.webkitRequestFullscreen) {
        divObj.webkitRequestFullscreen();
      } else {
        console.log("Fullscreen API is not supported");
      } 

    }
     </script>
<style>
.picture {
	top: 50px;
	left: 5px;
	width: 40px;
	height: 40px;
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

			<div id="_1164"  class="nm-label">
				<a  href="HomePageFindCar.jsp"> Home <br />
				</a>
			</div>

			<div id="_1166" 
				class="nm-label">
				<a  href="AddCarPage.jsp"> Register Car<br />
				</a>
			</div>

			<div id="_1168" 
				class="nm-label">
				<a  href="RegisterService.jsp"> Register Service<br />
				</a>
			</div>

			<div id="_1172"
				class="nm-label">
				<span id="_1173"> My Cars<br />
				</span>
			</div>

			

			<a id="_1174"  class="navbar-brand" 
				href="HomePageFindCar.jsp">Log out</a>

		</div>
	<div class="picture">
			<img id="theImage" src="../PictureServlet"  height="150" width="150" onClick="makeFullScreen()" ></div>
			 
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
					if(u!=null){
					%>
					<%=u.getEmail()%>
					<%} %>
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
					<%} %>
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
				placeholder="Name" class="form-control" />

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