<%@page import="busynesLogic.models.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="busynesLogic.*"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%if(session.getAttribute("user")==null){
	response.sendRedirect("Login.jsp");
}%>
<script>
	function makeFullScreen() {
		var divObj = document.getElementById("theImage");
		//Use the specification method before using prefixed versions
		if (divObj.requestFullscreen) {
			divObj.requestFullscreen();
		} else if (divObj.msRequestFullscreen) {
			divObj.msRequestFullscreen();
		} else if (divObj.mozRequestFullScreen) {
			divObj.mozRequestFullScreen();
		} else if (divObj.webkitRequestFullscreen) {
			divObj.webkitRequestFullscreen();
		} else {
			console.log("Fullscreen API is not supported");
		}

	}
</script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="../common-files/css/bootstrap.min.css">
<link rel="stylesheet" href="../common-files/css/fonts-v3.css">
<link rel="stylesheet" href="../common-files/css/base-v4.css">
<link rel="stylesheet"
	href="../styles/properties-658144f9-0c3e-8baf-fca5-a1e02fd800fb.css">

<title>Insert title here</title>
</head>
<body>
	<div id="_215">

		<div id="_216">

			<div id="_217"  class="nm-label">
				<a href="../jsp/HomePageFindCar.jsp"> Home</a>
				</span>
			</div>

			<div id="_219" 
				class="nm-label">
				<a href="../jsp/AddCarPage.jsp"> Add Car</a>
<<<<<<< HEAD

=======
>>>>>>> 8fda4d63bdc1e1b0a52e6a88c3cacf93a6739bd3
			</div>

			<div id="_221"
				class="nm-label">
				<a href="../jsp/RegisterService.jsp"> Register Service</a>
			</div>

			<div id="_223" 
				class="nm-label">
				<span id="_224"><a href="MyCars.jsp">My Cars</a> <br />
				</span>
			</div>

			<div id="_225" 
				class="nm-label">
				<a id="_226" href="TopService.jsp"> Services<br />
				</a>
			</div>

			<a id="_227" class="navbar-brand"
				href="../pages/HomePageFindCar.html">Log out</a>

		</div>
<<<<<<< HEAD

		<div id="_228">

			<img id="theImage" src="../PictureServlet" height="150" width="150"
				onClick="makeFullScreen()">
		</div>
=======
		<div id="_228">
			
			<img id="theImage" src="../PictureServlet"  height="150" width="150" onClick="makeFullScreen()" ></div>

>>>>>>> 8fda4d63bdc1e1b0a52e6a88c3cacf93a6739bd3

		<div id="_229" data-pagelink="ViewCar">

			<div id="_230">

				<i id="_231"></i>

				<div id="_232"></div>
			</div>
			<textarea id="_233">Top Car By Rating</textarea>

		</div>

		<div id="_234" data-pagelink="ViewCar">

			<div id="_235">

				<i id="_236"></i>
			</div>
			<textarea id="_237">Top Car By Views</textarea>

		</div>

		<div id="_238">

			<div id="_239" class="nm-label">
				<span id="_240"> My Top Cars<br />
				</span>
			</div>
		</div>
		<svg id="_241"> <path id="_242"
			d="M 15.000000000000002,0L 11.473288486245162,10.145898033750315L 0.7341522555726971,10.364745084375787L 9.293660902229078,16.854101966249683L 6.1832212156129,27.13525491562421L 14.999999999999998,21L 23.816778784387093,27.135254915624213L 20.706339097770922,16.854101966249686L 29.265847744427305,10.364745084375794L 18.52671151375484,10.145898033750317z" />
		</svg>
		<svg id="_243"> <path id="_244"
			d="M 15.000000000000002,0L 11.473288486245162,10.145898033750315L 0.7341522555726971,10.364745084375787L 9.293660902229078,16.854101966249683L 6.1832212156129,27.13525491562421L 14.999999999999998,21L 23.816778784387093,27.135254915624213L 20.706339097770922,16.854101966249686L 29.265847744427305,10.364745084375794L 18.52671151375484,10.145898033750317z" />
		</svg>
		<svg id="_245"> <path id="_246"
			d="M 15.000000000000002,0L 11.473288486245162,10.145898033750315L 0.7341522555726971,10.364745084375787L 9.293660902229078,16.854101966249683L 6.1832212156129,27.13525491562421L 14.999999999999998,21L 23.816778784387093,27.135254915624213L 20.706339097770922,16.854101966249686L 29.265847744427305,10.364745084375794L 18.52671151375484,10.145898033750317z" />
		</svg>
		<svg id="_247"> <path id="_248"
			d="M 15.000000000000002,0L 11.473288486245162,10.145898033750315L 0.7341522555726971,10.364745084375787L 9.293660902229078,16.854101966249683L 6.1832212156129,27.13525491562421L 14.999999999999998,21L 23.816778784387093,27.135254915624213L 20.706339097770922,16.854101966249686L 29.265847744427305,10.364745084375794L 18.52671151375484,10.145898033750317z" />
		</svg>
		<svg id="_249"> <path id="_250"
			d="M 15.000000000000002,0L 11.473288486245162,10.145898033750315L 0.7341522555726971,10.364745084375787L 9.293660902229078,16.854101966249683L 6.1832212156129,27.13525491562421L 14.999999999999998,21L 23.816778784387093,27.135254915624213L 20.706339097770922,16.854101966249686L 29.265847744427305,10.364745084375794L 18.52671151375484,10.145898033750317z" />
		</svg>

		<div id="_251" data-pagelink="91a7070b-f517-e79f-b0b7-54afc24f79fd"
			class="nm-label">

<<<<<<< HEAD
			<a href="../jsp/EditProfile.jsp"> Edit Profile</a><br /> </a>
=======
			<a href="../jsp/EditProfile.jsp"> Edit Profile</a><br />

			</a>
				<%
					User u = (User) (session.getAttribute("user"));
				%>
>>>>>>> 8fda4d63bdc1e1b0a52e6a88c3cacf93a6739bd3
		</div>

		<%
			User u = (User) (session.getAttribute("user"));
		%>
		<%
			if (u != null) {
		%>
		<div id="_253" data-pagelink="b7b0732b-5938-8ca4-6173-441f1ef0bd01"
			class="nm-label">
			<h3 id="_254">
<<<<<<< HEAD
				<%=u.getName()%>
				<br />

=======

				<%=u.getName()%>
				<br />


>>>>>>> 8fda4d63bdc1e1b0a52e6a88c3cacf93a6739bd3
			</h3>
		</div>

		<div id="_257" class="nm-label">
			<h3 id="_258">
<<<<<<< HEAD
=======

>>>>>>> 8fda4d63bdc1e1b0a52e6a88c3cacf93a6739bd3
				Location:
				<%=u.getLocation()%>
				<br />

			</h3>
		</div>

		<div id="_259" class="nm-label">
			<h3 id="_260">

				<%=u.getPhone()%>

				<br />
			</h3>
		</div>
		<%
			}
		%>
		<div id="_261">
			<svg id="_262"> <line id="_263" x1="0" x2="961" y1="" y2="0" />
			</svg>
		</div>

		<div id="_264" data-pagelink="38ea219a-95a9-ff68-4d57-17616b61669d"
			class="nm-label">
			<a id="_265" href="#"> Message<br />
			</a>
		</div>
	</div>
	<script type="text/javascript" src="../common-files/js/require.min.js"
		data-main="../scripts/startup"></script>
</body>
</html>