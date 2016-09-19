<%@page import="busynesLogic.models.ServiceDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="busynesLogic.models.Service"%>
<%@ page import="busynesLogic.*"%>
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
  <meta charset="UTF-8">
    <title>Data Table</title>
<meta charset="utf-8" />
	<title>Table Style</title>
	<meta name="viewport" content="initial-scale=1.0; maximum-scale=1.0; width=device-width;">
    
        <link rel="stylesheet" href="../css/style.css">
<style>
 div.table-title{
	top:100px;}</style>

</head>

<body>

	<div id="_2106">

		<i id="_2107">  </i>

		<div id="_2108">

			<div id="_2109" data-pagelink="a94616db-cbb5-a44c-04e5-687c8cdab037"
				class="nm-label">
				<a id="_2110" href="../pages/HomePageFindCar.html"> Home<br />
				</span>
			</div>

			<div id="_2111" class="nm-label">
				<span id="_2112"> Cars<br />
				</span>
			</div>

			<div id="_2113" class="nm-label">
				<span id="_2114"> Sellers<br />
				</span>
			</div>

			<div id="_2115" class="nm-label">
				<span id="_2116"> Auto Services<br />
				</span>
			</div>

			<div id="_2117" class="nm-label">
				<a id="_2118" href="#"> About<br />
				</a>
			</div>
		</div>
		<%if(session.getAttribute("user")==null){ %>
		<a id="_2119" href='../pages/Login.html'>Login</a>
			<%} else{ %>
			
		<a id="_2119" href='../pages/HomePageFindCar.html'>Login</a>
		<%} %>
		<div id="_2120">
			<svg id="_2121"> <line id="_2122" x1="0" x2="935" y1="" y2="0" />
			</svg>
		</div>

		<div id="_2123" class="nm-label">
			<h2 id="_2124">
				Auto Services<br />
			</h2>
		</div>
<div id="_2125">

  <table id="keywords" cellspacing="0" cellpadding="0">
  
    <tbody>
    <tr>
    <td class="lalign">Service Name</td>
        <td>Service Address</td>
        <td>Phone</td>
        <td>Rating</td>
        
     </tr>   
    <%for(Service s : ServiceDAO.getInstance().getServices().values()){ %>
      <tr>
        <td class="lalign"><%=s.getName() %></td>
        <td><%=s.getLocation() %></td>
        <td><%=s.getPhone() %></td>
        <td><%=s.getRating() %></td>
       
      </tr>
      <%} %>
      
    </tbody>
  </table>
  </form>
  </from>
 </div> 


		</body>
</html>