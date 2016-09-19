<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<style>
.ddl {
	top: 130px;
	left: 450px;
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
</head>

<body>

<div class="ddl">
				<h3>
					<%
						if (session.getAttribute("loginErr") != null) {
					%>
					<%=session.getAttribute("loginErr")%>
					<br />
					<%
					session.removeAttribute("loginErr"); }
					%>
				</h3>
			</div>
  <div id="_1">
  
    <form id="_2" name="LoginForm" method="POST" action="../LoginServlet" role="form">

      <div id="_3">

        <div id="_4" class="nm-label">
          <span id="_5">
            Login<br/>
        </span>
        </div>

        <div id="_6">
          <svg id="_7">
            <line id="_8" x1="0" x2="438" y1="" y2="0" />
          </svg>
        </div>
      </div>

      <div id="_9" class="nm-label">
        <span id="_10">
            Email<br/>
        </span>
      </div>

      <div id="_11" class="nm-label">
        <span id="_12">
            Password<br/>
        </span>
      </div>
      <input type="text" name="Email" id="_13" placeholder="Email" class="form-control" />
      <input type="password" name="Password" id="_14" placeholder="Password" class="form-control" />
      <button id="_17" data-pagelink="a94616db-cbb5-a44c-04e5-687c8cdab037" class="btn btn-default">
        Sign in

      </button>
    </form>

    <i id="_18"></i>
    <button id="_19" class="btn btn-default"><a href="RegisterProfile.jsp">Create new Account</a>
  

    </button>

   
    <div id="_21">

      <div id="_22"  class="nm-label">
        <span id="_23"><a href="HomePageFindCar.jsp">Home</a>
            <br/>
        </span>
      </div>

      <div id="_24"  class="nm-label">
        <span id="_25">
            Cars<br/>
        </span>
      </div>

      <div id="_26" class="nm-label">
        <span id="_27">
            <a href="TopSeller.jsp">Sellers</a><br/>
        </span>
      </div>

      <div id="_28" class="nm-label">
        <span id="_29">
            <a href="TopService.jsp">Auto Services</a><br/><br/>
        </span>
      </div>

      <div id="_30"  class="nm-label">
        <a id="_31" href="../pages/About.html">
            About<br/>
        </a>
      </div>
    </div>
  </div>
  <script type="text/javascript" src="../common-files/js/require.min.js" data-main="../scripts/startup"></script>
</body>

</html>