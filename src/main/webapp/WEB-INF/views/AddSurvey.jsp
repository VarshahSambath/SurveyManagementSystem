
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ page  session="true" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
  
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/materialize.css" rel="stylesheet">
<link href="resources/css/materialize.min.css" rel="stylesheet">
<link href="resources/css/addSurvey.css" rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/addSurvey.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="resources/js/materialize.js"></script>
<script src="resources/js/materialize.min.js"></script>
<title>Survey title</title>
</head>
<body>
  <div class="body"></div>
  <div class="grad"></div>
  
  <c:url var="logoutUrl" value="j_spring_security_logout" />
	 <form action="${logoutUrl}" method="post">
	  <input id="logoutButton" type="submit" value="Logout" /> <input type="hidden"
	   name="${_csrf.parameterName}" value="${_csrf.token}" />
	 </form>
	 
	 <div id="user">
		<sec:authentication property="principal.username" />
	</div>
	 
  
  <div class="row">
        <div class="col s8 m6" id="survey-wrap">
	        <form action="saveSurveyTitle" method="post">
	          <div class="card">
		          <img class="blackImg" /> 
		          <div class="card-content white-text">
			          <p class="current-user"></p>
			          <div class="card-title center-align">Create a new Survey</div>
			          
			          <input type="text" placeholder="Enter Survey Title" id="survey-title" name="surveyTitle" class="valign" required/>
		          </div>
		          <div class="card-action center-align">
			          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			          <button class=" waves-light btn center-align " id="survey-create" type="submit" value="submit" ><i>Create</i>
					</button> 
				</div>
	         </div>
	       </form> 
       </div>
  </div>
</body>
</html>