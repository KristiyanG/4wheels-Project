<%@page import="busynesLogic.models.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="busynesLogic.models.UserDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<style>
.profilePic {
	top: 100px;
	left: 150px;
	width: 220px;
	height: 40px;
}
</style>

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <link rel="stylesheet" href="../common-files/css/bootstrap.min.css">
  <link rel="stylesheet" href="../common-files/css/fonts-v3.css">
  <link rel="stylesheet" href="../common-files/css/base-v4.css">
  <link rel="stylesheet" href="../styles/properties-658144f9-0c3e-8baf-fca5-a1e02fd800fb.css">
  <style>
.button {
	top: 200px;
	left: 450px;
	width: 70px;
	height: 35px;
}
</style>
 <style>
.box {
	top: 200px;
	left: 400px;
	width: 70px;
	height: 35px;
}
</style>
</head>

<body>



  <div id="_2052">
    <%String mail=null;
    if(session.getAttribute("userMail")!=null){
    	mail=(String)(session.getAttribute("userMail"));
    }
    else{
    	mail=request.getParameter("userMail");
    }
    User user =UserDAO.getInstance().getUser(mail); %>
    	
  	
    <div id="_2055">
			
			<img  src="../ProfilePictureServlet?userMail=<%=user.getEmail() %>"  height="150" width="150"  ></div>

    <div id="_2056" data-pagelink="ViewCar">

      <div id="_2057">

        <i id="_2058"></i>
      </div>
      <textarea id="_2059">Make, Model, Year Fuel, GearBox Price 
      </textarea>

    </div>

    <div id="_2060">

      <div id="_2061">

        <i id="_2062"></i>
      </div>
      <textarea id="_2063">Make, Model, Year Fuel, GearBox Price 
      </textarea>

    </div>
    
    <svg id="_2053">
      <path id="_2054" d="M 15.000000000000002,0L 11.473288486245162,10.145898033750315L 0.7341522555726971,10.364745084375787L 9.293660902229078,16.854101966249683L 6.1832212156129,27.13525491562421L 14.999999999999998,21L 23.816778784387093,27.135254915624213L 20.706339097770922,16.854101966249686L 29.265847744427305,10.364745084375794L 18.52671151375484,10.145898033750317z"
      />
    </svg>
    <svg id="_2064">
      <path <%if(user.getRating()>1) {%> id="_2054"<%}else{ %>id="_2069"<%} %> d="M 15.000000000000002,0L 11.473288486245162,10.145898033750315L 0.7341522555726971,10.364745084375787L 9.293660902229078,16.854101966249683L 6.1832212156129,27.13525491562421L 14.999999999999998,21L 23.816778784387093,27.135254915624213L 20.706339097770922,16.854101966249686L 29.265847744427305,10.364745084375794L 18.52671151375484,10.145898033750317z"
      />
    </svg>
    <svg id="_2066">
      <path <%if(user.getRating()>2) {%> id="_2054"<%}else{ %>id="_2069"<%} %> d="M 15.000000000000002,0L 11.473288486245162,10.145898033750315L 0.7341522555726971,10.364745084375787L 9.293660902229078,16.854101966249683L 6.1832212156129,27.13525491562421L 14.999999999999998,21L 23.816778784387093,27.135254915624213L 20.706339097770922,16.854101966249686L 29.265847744427305,10.364745084375794L 18.52671151375484,10.145898033750317z"
      />
    </svg>
    <svg id="_2068">
      <path <%if(user.getRating()>3) {%> id="_2054"<%}else{ %>id="_2069"<%} %> d="M 15.000000000000002,0L 11.473288486245162,10.145898033750315L 0.7341522555726971,10.364745084375787L 9.293660902229078,16.854101966249683L 6.1832212156129,27.13525491562421L 14.999999999999998,21L 23.816778784387093,27.135254915624213L 20.706339097770922,16.854101966249686L 29.265847744427305,10.364745084375794L 18.52671151375484,10.145898033750317z"
      />
    </svg>
    <svg id="_2070">
      <path <%if(user.getRating()>4) {%> id="_2054"<%}else{ %>id="_2069"<%} %> d="M 15.000000000000002,0L 11.473288486245162,10.145898033750315L 0.7341522555726971,10.364745084375787L 9.293660902229078,16.854101966249683L 6.1832212156129,27.13525491562421L 14.999999999999998,21L 23.816778784387093,27.135254915624213L 20.706339097770922,16.854101966249686L 29.265847744427305,10.364745084375794L 18.52671151375484,10.145898033750317z"
      />
    </svg>


<form action="ViewProfile.jsp?userMail=<%=user.getEmail()%>" >
	<%session.setAttribute("userMail", user.getEmail()); %>
  <select class="box" name="rate" >
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
  </select>
  <input class="button" type="submit" value="Rate">
</form>
    <div id="_2072" class="nm-label">
      <h3 id="_2073">
           <%=user.getName() %><br/>
        </h3>
    </div>
<% String rate = request.getParameter("rate");
if(rate==null){
	}else{
		UserDAO.getInstance().updateUserRating(user.getEmail(), rate);
	}%>
    <div id="_2074" class="nm-label">
      <h3 id="_2075">
           <%=user.getLocation() %><br/>
        </h3>
    </div>

    <div id="_2076" class="nm-label">
      <h3 id="_2077">
            <%=user.getPhone() %><br/>
        </h3>
    </div>


    <div id="_2078" class="nm-label">
      <a id="_2079" href="#">
            Add Rating<br/>
        </a>
        
    </div>


    <div id="_2080">
      <svg id="_2081">
        <line id="_2082" x1="0" x2="927" y1="" y2="0" />
      </svg>
    </div>

    <div id="_2083" class="nm-label">
      <h2 id="_2084">
            Cars<br/>
        </h2>
    </div>
    <div id="_2085">

      <div id="_2086">
        <svg id="_2087">
          <path id="_2088" d="M 3,3

L 11,3

L 7,8

 Z" />
        </svg>
      </div>

      <div id="_2089">
        <svg id="_2090">
          <path id="_2091" d="M 3,8

L 10.999999999992724,8

L 7.0000000000873115,3

 Z" />
        </svg>
      </div>

      <div id="_2092">

        <div id="_2093">

        </div>
      </div>
    </div>

    <div id="_2094">

      <div id="_2095" data-pagelink="HomePageFindCar" class="nm-label">
        <span id="_2096">
            Home<br/>
        </span>
      </div>

      <div id="_2097" data-pagelink="TopCars" class="nm-label">
        <span id="_2098">
            Cars<br/>
        </span>
      </div>

      <div id="_2099" data-pagelink="TopSellers" class="nm-label">
        <span id="_2100">
            Sellers<br/>
        </span>
      </div>

      <div id="_2101" data-pagelink="TopSellers" class="nm-label">
        <span id="_2102">
            Auto Services<br/>
        </span>
      </div>

      <div id="_2103" class="nm-label">
        <a id="_2104" href="#">
            About<br/>
        </a>
      </div>
    </div id="_2105">
     <div id="_2105">
    <%if(session.getAttribute("user")==null){ %>
		<a  href="Login.jsp">Login</a>
			<%} else{ %>
			
		<a  href="HomePageFindCar.jsp">Log Out</a>
		
		<%} %>
		
		</div>
  </div>
  <script type="text/javascript" src="../common-files/js/require.min.js" data-main="../scripts/startup"></script>
</body>

</html>