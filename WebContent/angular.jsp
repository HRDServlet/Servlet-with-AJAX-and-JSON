<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ANGULAR WITH AJAX - JSON</title>
</head>
<body>
	<input type="hidden" id="base_url" value="${pageContext.request.contextPath}">
	<div ng-app="demoApp" ng-controller="demoCtrl">
		<input type="text" ng-model="search" placeholder="Type any username...">
		<table>
		<tr>
			<td>Username</td>
			<td>Password</td>
		</tr>
		
		<tr ng-repeat="d in data | filter:d.username=search">
			<td>{{d.username}}</td>
			<td>{{d.password}}</td>
		</tr>
	</table>
	</div>
</body>
<script type="text/javascript">
	base_url = $('#base_url').val();
	/* Create AngularJS App */
	var app = angular.module('demoApp', []);
	/* Create Controller */
	app.controller('demoCtrl', function($scope, $http){
		$http.get(base_url+'/array').then(function(response){
			$scope.data = response.data;
		});
	});
</script>
</html>