var app = angular.module('signIn', ['ngRoute', 'ngSanitize']);
  app.controller('handler', function($scope, $http) {
	
		$scope.login_message = "";
		
		$scope.click = function() {
		
			$http.get('http://www.w3schools.com/angular/customers.php').
			  success(function(data, status, headers, config) {
				
				$scope.login_message = "<span class='label label-danger'>Login/Password are incorrect</span>";
			  
			  }).
			  error(function(data, status, headers, config) {

				$scope.login_message = "<span class='label label-danger'>Danger Label</span>";
			  
			  });
		  
		 };
		
  });