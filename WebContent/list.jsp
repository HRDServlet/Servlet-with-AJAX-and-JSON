<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student List</title>
</head>
<body>
	<input type="hidden" id="base_url" value="${pageContext.request.contextPath}">
	<div id="display">
		
	</div>
</body>
<script type="text/javascript">
	$(document).ready(function(){
		var base_url = $('#base_url').val();
		var table = "<table border='1'>";
		table += "<tr>";
		table += "<td>ID</td><td>Name</td>";
		table += "</tr>";
		$.ajax({url: base_url+'/list', success: function(result){
			for(var i=0; i<result.length; i++){
				table += "<tr>";
				table += "<td>"+result[i].id+"</td>";
				table += "<td>"+result[i].name+"</td>";
				table += "</tr>";
			}
			
			table += "</table>";
			$('#display').append(table);
		}});
	});
</script>
</html>