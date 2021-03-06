<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html lang="en">

    <head>
        <title>Exercises</title>
    	<link rel="stylesheet" type="text/css" href="<c:url value="/css/style.css"/>"/>
    	<link rel="stylesheet" type="text/css" href="<c:url value="/css/styleIndex.css"/>"/>
    	<link rel="stylesheet" type="text/css" href="<c:url value="/css/header.css"/>"/>
    	<link rel="stylesheet" type="text/css" href="<c:url value="/css/footer.css"/>"/>
    	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    </head>
    <body>

		<div class="header">
			<div class="headBox">
		  			<h1>Create Exercises</h1>
			
			</div>
		</div>
		
    <%--Note that the `commandName` given here HAS TO MATCH the name of the attribute--%>
    <%--that is added to the model that is passed to the view.--%>
    <%--See PostitNoteController, method postitNoteViewGet(), and find where this attribute is added to the model.--%>
    <div class="body">
    	<div class="train">
    	
	    <sf:form class="formBox" method="POST" modelAttribute="exercise" action="/exercises">
			
			<div class="input">
				<div class="inputBox">
					<p>Exercise name: ${villa}</p>
					<sf:input path="name" type="text" placeholder="Enter Name"/>
				</div>
				<p class="text inputBox">Here you can add the exercise name. Here is a <a class="blackText" href="http://travelstrong.net/bodyweight-exercises/">list of exercises</a></p>
			</div>
			
			<div class="input">
				<div class="inputBox">
					<p>Targeted area to train: ${villa1}</p>
					<sf:input path="type" type="text" placeholder="Enter Type"/>
				</div>
				<p class="text inputBox">Here you can write what area your exercise is targeting.</p>
			</div>
			
			<div class="input">
				<div class="inputBox">
					<p>Rep Type: ${villa2}</p>
		        	<sf:input path="repType" type="text" placeholder="Enter Rep Type"/>
				</div>
				<p class="text inputBox">Here you can write what your rep is based on time or reps.</p>
			</div>
			
			<div class="input">
				<div class="inputBox">
					<p>Reps:</p>
			        <sf:input path="reps" type="text" placeholder="Enter Reps"/>
				</div>
				<p class="text inputBox">How many reps you want to do in your exercise</p>
			</div>
			
			<div class="input">
				<div class="inputBox">
					<p>Link:</p>
			        <sf:input path="info" type="text" placeholder="Enter Info"/>
				</div>
				<p class="text inputBox">Here you can add an embedet youtube link to add video or text</p>
				
			</div>
			<div class="input submit">
				<div class="inputBox">
					<p>Here you can create you exercises when finish.</p>
			        <input type="submit" VALUE="Create Exercise"/>
				</div>
			</div>
	    </sf:form>
	    
	    <sf:form class="formBox" method="POST" modelAttribute="exercise" action="/removeExercise">
			<div class="input">
        		<table>
            		<tr>
            			<td></td>
            			<td>
						<form:select path="id" multiple="false" style="width: 300px">
            					<option disabled selected value> -- select an exercise -- </option>
            					<form:options items="${allExercises}" itemLabel = "name"/>
            				</form:select>
					</td>
            		</tr>
            
        		</table>
        
        		<input type="submit" VALUE="Remove"/>
        		</div>
       </sf:form>
       </div>
    </div>
  
	<%@include file="headerAndFooder/footer.jsp" %>
    </body>
</html>
