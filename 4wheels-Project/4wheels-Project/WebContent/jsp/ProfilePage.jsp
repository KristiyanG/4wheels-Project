<%@page import="busynesLogic.models.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="busynesLogic.*"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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

			<div id="_217" data-pagelink="HomePageFindCar" class="nm-label">
				<span id="_218"> Home<br />
				</span>
			</div>

			<div id="_219" data-pagelink="0643bef3-8d19-a14a-5405-03ab8048f78e"
				class="nm-label">
				<a href="../jsp/AddCarPage.jsp"> Add Car</a>
			</div>

			<div id="_221" data-pagelink="53df4c96-963c-9ce0-edb9-83fdf279daf5"
				class="nm-label">
				<span id="_222"> Add Service<br />
				</span>
			</div>

			<div id="_223" data-pagelink="c9679362-2c21-98bd-2957-685f655fd083"
				class="nm-label">
				<span id="_224"> My Cars<br />
				</span>
			</div>

			<div id="_225" data-pagelink="399e5e5b-29f7-9aac-9852-3183820f47bf"
				class="nm-label">
				<a id="_226" href="#"> My Services<br />
				</a>
			</div>

			<a id="_227" data-pagelink="HomePageFindCar" class="navbar-brand"
				href="#">Log out</a>

		</div>

		<i id="_228">  </i>

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
			<a id="_252" href="#"> Edit Profile<br />
			</a>
		</div>

		<div id="_253" data-pagelink="b7b0732b-5938-8ca4-6173-441f1ef0bd01"
			class="nm-label">
			<h3 id="_254">
				<%
					User u = (User) (session.getAttribute("user"));
				%>
				<%=u.getName()%>
				<br />
			</h3>
		</div>

		<div id="_257" class="nm-label">
			<h3 id="_258">
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