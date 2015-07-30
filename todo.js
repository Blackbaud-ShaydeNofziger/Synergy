var app = angular.module('signIn', ['ngRoute']);
  app.controller('handler', function($scope, $http) {
	
		$scope.last = '';
		$http.post('http://someUrl', {login:$scope.logIn, password: $scope.password}).
		  success(function(data, status, headers, config) {
			
			$scope.last = $scope.logIn;
		  
		  }).
		  error(function(data, status, headers, config) {

			$scope.last = "POO";
		  
		  });
		
  });