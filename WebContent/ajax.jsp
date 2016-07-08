<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<title>ajax</title>
</head>
<body>
	<form action="">
		<input type="text" id="stu_id" placeholder="student id"></br>
		<input type="text" id="stu_name" placeholder="student name"></br>
		<input type="button"  action="insert()" value="Insert"></br>
	</form>
	<input type="hidden" id="url" value="${pageContext.request.contextPath}">
</body>
<script type="text/javascript">
$(document).ready(function(){
	
	var url=$("#url").val();
	var stuid =$("#stu_id").val();
	var stuname =$("#stu_name").val();

	function insert(){
		$.ajax({
			url: url +" "+ form,
			method:'POST',
			success: function(result){
				alert(result);
			}
		
		});
		
		
	}
});
		
	

</script>
</html>