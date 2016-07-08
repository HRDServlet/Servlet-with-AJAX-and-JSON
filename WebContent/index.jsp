<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSON with AJAX</title>
</head>
<body>
	<input type="hidden" id="base_url" value="${pageContext.request.contextPath}">
	<div id="display">
	
	</div>
</body>
<script type="text/javascript">
	
	$(document).ready(function(){
		base_url = $('#base_url').val();
		/*
		$.ajax({url: base_url + "/object", 
			success: function(result){
				alert(result.username);
				alert(result.password);
			}, error: function(err){
				alert("Error");
			}
		});*/
		
		var table = "<table border='1'>"
			+ "<tr>"
			+ "<th>Username</th>"
			+ "<th>Password</th>";
		$.getJSON(base_url + "/array", function(result){
			for(var i= 0; i<result.length; i++){
				
				table += "<tr>";
				table += "<td>" + result[i].username + "</td>";
				table += "<td>" + result[i].password + "</td>";
				table += "</tr>";
			}
			
			table += "</table>";
			// append table to div
			$("#display").append(table);
			
		});
	});
</script>
</html>