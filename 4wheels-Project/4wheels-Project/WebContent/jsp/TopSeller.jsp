<%@page import="busynesLogic.models.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="busynesLogic.models.UserDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<link rel="stylesheet" href="../common-files/css/bootstrap.min.css">
<link rel="stylesheet" href="../common-files/css/fonts-v3.css">
<link rel="stylesheet" href="../common-files/css/base-v4.css">
<link rel="stylesheet"
	href="../styles/properties-658144f9-0c3e-8baf-fca5-a1e02fd800fb.css">
<link rel="stylesheet" href="../css/style.css">
</head>

<body>

	<div id="_1987">

		<div id="_1988">

			<div id="_1989" data-pagelink="HomePageFindCar" class="nm-label">
				<span id="_1990"> Home<br />
				</span>
			</div>

			<div id="_1991" data-pagelink="TopCars" class="nm-label">
				<span id="_1992"> Cars<br />
				</span>
			</div>

			<div id="_1993" data-pagelink="TopSellers" class="nm-label">
				<span id="_1994"> Sellers<br />
				</span>
			</div>

			<div id="_1995" data-pagelink="TopSellers" class="nm-label">
				<span id="_1996"> Auto Services<br />
				</span>
			</div>

			<div id="_1997" class="nm-label">
				<a id="_1998" href="#"> About<br />
				</a>
			</div>
		</div>

		<div id="_1999">
			<svg id="_2000"> <line id="_2001" x1="0" x2="996" y1="" y2="0" />
			</svg>
		</div>

		<div id="_2002">
			<svg id="_2003"> <line id="_2004" x1="0" x2="945" y1="" y2="0" />
			</svg>
		</div>

		<div id="_2005">
			<svg id="_2006"> <line id="_2007" x1="0" x2="945" y1="" y2="0" />
			</svg>
		</div>

		<i id="_2008"></i>
		<button id="_2009" class="btn btn-default">Login/ Loguot</button>

		<div id="_2010" class="nm-label">
			<h3 id="_2011">
				Sort by <br />
			</h3>
		</div>

		<div id="_2012">

			<table id="keywords" cellspacing="0" cellpadding="0">

				<tbody>
					<tr>
						<td class="lalign">Name</td>
						<td>Location</td>
						<td>Phone</td>
						<td>Rating</td>
					</tr>
					<%for(User u :UserDAO.getInstance().sortedUser()) {%>
					<tr>
						<td class="lalign"><%=u.getName() %></td>
						<td><%=u.getLocation() %></td>
						<td><%=u.getPhone() %></td>
						<td><%=u.getRating() %></td>
					</tr>
					<%} %>
				</tbody>
			</table>

		
	
	<script type="text/javascript" src="../common-files/js/require.min.js"
		data-main="../scripts/startup"></script>
</body>

</html>