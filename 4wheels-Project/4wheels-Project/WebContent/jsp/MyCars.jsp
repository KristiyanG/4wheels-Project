<%@page import="busynesLogic.models.Car"%>
<%@page import="busynesLogic.models.CarDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="busynesLogic.models.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%User user=null;	
if((session.getAttribute("user"))==null){
	response.sendRedirect("Login.jsp");
	}else{
		 user = (User)session.getAttribute("user");}%>
<head>
<style>
.ddl {
	top:250px;
	left: 60px;
	width: 600px;
	height:40px;
	
}
</style>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="stylesheet" href="../css/style.css">
  <link rel="stylesheet" href="../common-files/css/bootstrap.min.css">
  <link rel="stylesheet" href="../common-files/css/fonts-v3.css">
  <link rel="stylesheet" href="../common-files/css/base-v4.css">
  <link rel="stylesheet" href="../styles/properties-658144f9-0c3e-8baf-fca5-a1e02fd800fb.css">
</head>

<body>


  <div id="_1077">

    <div id="_1078">

      <div id="_1079"  class="nm-label">
        <span id="_1080">
           <a href ="HomePageFindCar.jsp">Home</a><br/>
        </span>
      </div>

      <div id="_1081"  class="nm-label">
        <span id="_1082">
             <a href ="AddCarPage.jsp">Add Car</a><br/><br/>
        </span>
      </div>

      <div id="_1083"  class="nm-label">
        <span id="_1084">
             <a href ="RegisterService.jsp">Add Service</a><br/><br/>
        </span>
      </div>

      <div id="_1085"  class="nm-label">
        <span id="_1086">
             <a href ="MyCars.jsp">My Cars</a><br/><br/>
        </span>
      </div>

      <div id="_1087"  class="nm-label">
        <a id="_1088" href="TopService.jsp">
        
            Service<br/>
        </a>
      </div>

      <a id="_1089"  href="HomePageFindCar.jsp">Log out</a>

    </div>

    <i id="_1090">
        <img id="theImage" src="../PictureServlet"  height="150" width="150" onClick="makeFullScreen()" >
    </i>

    <div id="_1091">
      <svg id="_1092">
        <line id="_1093" x1="0" x2="937" y1="" y2="0" />
      </svg>
    </div>

	<%
		ArrayList<Car> cars=CarDAO.getInstance().userCars(user.getEmail()); 
		if(cars.size()==0){%>
		<table class ="ddl" id="keywords" cellspacing="0" cellpadding="0">
		<tr>
						<td class="lalign">You haven't car list !</td>
						
					</tr>
	</table>
	
	<%}else { %>
	
		
	
	
	<table class="ddl"  id="keywords" >

				<tbody>
					<tr>
						<td class="lalign">Make</td>
						<td>Model</td>
						<td>Year</td>
						<td>Price</td>
						
					</tr>
						<% for(Car car :cars){%>
					<tr>
						<td ><a href="ViewCarPage.jsp?id=<%=car.getId() %>"><%=car.getMake() %></a></td>
						<td><%=car.getModel() %></td>
						<td><%=car.getYear() %></td>
						<td><%=car.getPrice() %></td>
						<form name="editProfile" method="POST" action="../DeleteCarServlet?id=<%=car.getId()%>">
			<td><button >Delete </button></td>
		</form>
						
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
	
<%} %>
    <div id="_1157" class="nm-label">
      <h1 id="_1158">
            My Cars<br/>
        </h1>
    </div>

    
  </div>
  <script type="text/javascript" src="../common-files/js/require.min.js" data-main="../scripts/startup"></script>
</body>

</html>