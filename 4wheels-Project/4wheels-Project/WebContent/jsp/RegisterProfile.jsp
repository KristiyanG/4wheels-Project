<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<style>
.ddl2 {
	top: 250px;
	left: 450px;
	width: 220px;
	height: 35px;
}
</style>
<style>
.picture{
	top: 750px;
	left: 70px;
	width: 220px;
	height: 35px;
}
</style>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <link rel="stylesheet" href="../common-files/css/bootstrap.min.css">
  <link rel="stylesheet" href="../common-files/css/fonts-v3.css">
  <link rel="stylesheet" href="../common-files/css/base-v4.css">
  <link rel="stylesheet" href="../styles/properties-658144f9-0c3e-8baf-fca5-a1e02fd800fb.css">
  
  <style>
  .ddl{
  	top: 704px;
  	left: 38px;
  	width: 220px;
  	height: 30px;
  	border-radius: 5px;
  }
  
  </style>
  
</head>


<body>

  <div id="_32">

<form name="registerForm" method="POST" action="../RegisterServlet" enctype="multipart/form-data">

    <i id="_33">
       
    </i>

    <div id="_34">

      <div id="_35" class="nm-label">
        <span id="_36">
            Name<br/>
        </span>
      </div>
    </div>
    <input type="text" id="_37" name="FullName" placeholder="Name" class="form-control" />

    <div id="_38">

      <div id="_39" class="nm-label">
        <span id="_40">
            Password<br/>
        </span>
      </div>
    </div>
    <input type="text" id="_41" name="EmailAddres" placeholder="Email" class="form-control" />

    <div id="_42">

      <div id="_43" class="nm-label">
        <span id="_44">
            Email Address<br/>
        </span>
      </div>
    </div>
    <input type="text" id="_45" name="ConfirmPassword" placeholder="ConfirmPassword" class="form-control" />
    <input type="text" id="_46" name="Password" placeholder="Password" class="form-control" />

    <div id="_47">

      <div id="_48" class="nm-label">
        <span id="_49">
            Confirm Password<br/>
        </span>
      </div>
    </div>

    <div id="_50">

      <div id="_51" class="nm-label">
        <span id="_52">
            Location<br/>
        </span>
      </div>
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
	</select>

    <button id="_64" data-pagelink="Login" class="btn btn-default">
      Register

    </button>

    <div id="_65">

      <div id="_66" data-pagelink="HomePageFindCar" class="nm-label">
        <span id="_67">
            Home<br/>
        </span>
      </div>

      <div id="_68" data-pagelink="TopCars" class="nm-label">
        <span id="_69">
            Cars<br/>
        </span>
      </div>

      <div id="_70" data-pagelink="TopSellers" class="nm-label">
        <span id="_71">
            Sellers<br/>
        </span>
      </div>

      <div id="_72" data-pagelink="TopServices" class="nm-label">
        <span id="_73">
            Auto Services<br/>
        </span>
      </div>

      <div id="_74" data-pagelink="About" class="nm-label">
        <a id="_75" href="#">
            About<br/>
        </a>
      </div>
    </div>
    <input type="text" id="_76" name="PhoneNumber" placeholder="Phone" class="form-control" />

    <div id="_77">

      <div id="_78" class="nm-label">
        <span id="_79">
            Phone Number<br/>
        </span>
      </div>
    </div>

    <div id="_80">
      <svg id="_81">
        <line id="_82" x1="0" x2="872" y1="" y2="0" />
      </svg>
    </div>

    <div id="_83" class="nm-label">
      <h2 id="_84">
            Profile Registration<br/>
        </h2>
    </div>
     <input type="file" class="picture" name="profilePic" 	placeholder="Profile pic"/> 
    </form>

    <i id="_85">
        T
    </i>

    <i id="_86"></i>
  </div>
  <div class="ddl2">
				<h3>
					<%
						if (session.getAttribute("registerErr") != null) {
					%>
					<%=session.getAttribute("registerErr")%>
					<br />
					<%
					session.removeAttribute("registerErr"); }
					%>
				</h3>
			</div>
  <script type="text/javascript" src="../common-files/js/require.min.js" data-main="../scripts/startup"></script>
</body>

</html>