<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="resources/css/materialize.css" rel="stylesheet">
<link href="resources/css/materialize.min.css" rel="stylesheet">
<link href="resources/css/addSurvey.css" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/addSurvey.js"></script>
<script src="resources/js/materialize.js"></script>
<script src="resources/js/materialize.min.js"></script>
<title>Survey title</title>
</head>
<body>
  <div class="row">
        <div class="col s8 m6" id="survey-wrap">
         <form action="saveSurveyTitle" method="post">
          <div class="card blue-grey darken-1">
          
            <div class="card-content white-text">
              <div class="card-title center-align">Create a new Survey</div>
              <p class="error-msg"></p>
              <input type="text" placeholder="Enter Survey Title" id="survey-title" name="surveyTitle" class="valign"/>
            </div>
            <div class="card-action">
           		  <button class=" waves-light btn center-align grey lighten-4" id="survey-create" type="submit" value="submit" ><i>Create</i>
		</button> 
		<!--  <a class=" waves-light btn center-align grey lighten-4" id="survey-create"  ><i>Create</i>--> 
		</a>
            </div>
         
        </form> 
          </div>
        </div>
        
     
 </div>
</body>
</html>