<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="busynesLogic.*"%>
	<%@page import="busynesLogic.models.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<style>
.ddl2 {
	top: 230px;
	left: 350px;
}
</style>
<%if(session.getAttribute("user")==null){
	response.sendRedirect("Login.jsp");
}%>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<link rel="stylesheet" href="../common-files/css/bootstrap.min.css">
<link rel="stylesheet" href="../common-files/css/fonts-v3.css">
<link rel="stylesheet" href="../common-files/css/base-v4.css">
<link rel="stylesheet"
	href="../styles/properties-658144f9-0c3e-8baf-fca5-a1e02fd800fb.css">
</head>

<body>

	<div id="_578">

		<form name="registerService" method="POST"
			action="../RegisterServiceServlet">
			<div id="_579">

				
      <div id="_580" data-pagelink="HomePageFindCar" class="nm-label">
        <span id="_581">
           <a href="HomePageFindCar.jsp">Home</a> <br/>
        </span>
      </div>

      <div id="_582" data-pagelink="0643bef3-8d19-a14a-5405-03ab8048f78e" class="nm-label">
        <span id="_583"><a href="AddCarPage.jsp">Add Car</a>
            <br/>
        </span>
      </div>

      <div id="_584" data-pagelink="53df4c96-963c-9ce0-edb9-83fdf279daf5" class="nm-label">
        <span id="_585">
           <a href="RegisterService.jsp">Add Service</a><br/>
        </span>
      </div>

      <div id="_586" class="nm-label">
        
            My Cars<br/>
        
      </div>

      <div id="_588" data-pagelink="399e5e5b-29f7-9aac-9852-3183820f47bf" class="nm-label">
        <a id="_589" href="TopService.jsp">
          Auto Service<br/>
        </a>
      </div>

				<a id="_590" class="navbar-brand"
					href="HomePageFindCar.jsp">Log out</a>
			</div>

			
			
			 <input type="text"
				name="serviceName" id="_593" placeholder="" class="form-control" />


			<div id="_594">

				<div id="_595" class="nm-label">
					<span id="_596"> Service Name<br />
					</span>
				</div>
			</div>
			<input type="text" id="_597" name="serviceAdd" placeholder=""
				class="form-control" />

			<div id="_598">

				<div id="_599" class="nm-label">
					<span id="_600"> Service Address<br />
					</span>
				</div>
			</div>
			<input type="text" id="_601" name="phone" placeholder=""
				class="form-control" />

			<div id="_602">

				<div id="_603" class="nm-label">
					<span id="_604"> Contacts<br />
					</span>
				</div>
			</div>
			<div class="ddl2">
				<h3>
					<%
						if (session.getAttribute("serviceErr") != null) {
					%>
					<%=session.getAttribute("serviceErr")%>
					<br />
					<%
						}
					%>
				</h3>
			</div>
			<div id="_605" class="nm-label">
				<h3 id="_606">
					Register Service<br />
				</h3>
			</div>

			<button id="_607"
				data-pagelink="ac270a8e-2bb1-7c66-7fbf-58725991ec27"
				class="btn btn-default">Register</button>

			<i class="placeholder" id="_608"></i> <i id="_609"></i>
		</form>
	</div>

	<script type="text/javascript" src="../common-files/js/require.min.js"
		data-main="../scripts/startup"></script>
</body>

</html>