<%@page import="busynesLogic.models.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="busynesLogic.models.UserDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<style>
.button {
	top: 150px;
	left: 350px;
	width: 70px;
	height: 35px;
}
</style>
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
				<a id="_1990" href="HomePageFindCar.jsp"> Home <br />
				</a>
			</div>

			<div id="_1991" data-pagelink="TopCars" class="nm-label">
				<span id="_1992"> Cars<br />
				</span>
			</div>

			<div id="_1993" class="nm-label">
				<a id="_1994" href="TopSeller.jsp"> Sellers<br />
				</a>
			</div>

			<div id="_1995" data-pagelink="TopService" class="nm-label">
				<a id="_1996" href="TopService.jsp"> Auto Service<br />
				</a>
			</div>

			<div id="_1997" class="nm-label">
				<a id="_1998" href="../pages/About.html"> About<br />
				</a>
			</div>
		</div>

		<div id="_1999">
			<svg id="_2000"> <line id="_2001" x1="0" x2="996" y1="" y2="0" />
			</svg>
		</div>


		

		<i id="_2008"></i>
		<%
			User us = (User) (session.getAttribute("user"));
			if (us == null) {
		%>
		<a href="Login.jsp">
			<button id="_2009" class="btn btn-default">Login</button>
		</a>
		
		<%
			} else {
		%>
		<a href="HomePageFindCar.jsp">
		<button id="_2009" class="btn btn-default">Log out</button>
		</a>
		<%
			}
		%>
		<div id="_2010" class="nm-label">
			<h3 id="_2011">
				Sort by <br />
			</h3>
		</div>
		<form  action="TopSeller.jsp" >
  <select id="_2051" name="item" class="form-control" >
    <option value="rating">Rating</option>
    <option value="name">Name</option>
  </select>
  <input class="button" type="submit" value="Filter">
</form>

    
    
		<div id="_2012">

			<table id="keywords" cellspacing="0" cellpadding="0">

				<tbody>
					<tr>
						<td class="lalign">Name</td>
						<td>Location</td>
						<td>Phone</td>
						<td>Rating</td>
					</tr>
					<%String sortBy = request.getParameter("item");
						if(sortBy==null){
							sortBy="rating";
						}
						for (User u : UserDAO.getInstance().sortedUser(sortBy)) {
					%>
					<tr>
						<td class="lalign"><a href="ViewProfile.jsp?userMail=<%=u.getEmail()%>"><%=u.getName() %></a></td>
						<td><%=u.getLocation()%></td>
						<td><%=u.getPhone()%></td>
						<td><%=u.getRating()%></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>



			<script type="text/javascript"
				src="../common-files/js/require.min.js"
				data-main="../scripts/startup"></script>
</body>

</html>