var synergyControllers = angular.module('synergyControllers', []);

synergyControllers.controller('IndexController', ['$scope',
	function($scope)	{
		$scope.username = "Shayde";
	}
]);

synergyControllers.controller('ProfileController', ['$scope', '$http',
	function($scope, $http)	{
		var user = {};
		user.first_name = "Shayde";
		user.last_name = "Nofziger";
		user.email = "shayde.nofziger@blackbaud.com";
		user.interests = ["Hiking", "Programming", "Serving Food", "Teaching Children"];
		user.phone = "8605759811";
		$scope.user = user;
	}
]);

synergyControllers.controller('ProfileUpdateController', ['$scope', '$http',
	function($scope, $http)	{
		$scope.master = {};

		$scope.update = function(user)	{
			$scope.master = angular.copy(user);
		};

		$scope.reset = function()	{
			$scope.user = angular.copy($scope.master);
		};

	}
]);

synergyControllers.controller('OrganizationController', ['$scope', '$http',
	function($scope, $http)	{
		$scope.organization = {};
		
		$scope.create = function(org)	{
			
		}
	}
])]);

synergyControllers.controller('signInController', ['$scope', '$http', '$window',
	function($scope, $http, $window)	{

		$scope.login_message = "";
		
		$scope.click = function() {
		
			$http.get('http://www.w3schools.com/angular/customers.php').
			  success(function(data, status, headers, config) {
				
				$scope.login_message = "<span class='label label-danger'>Login/Password are incorrect</span>";
				$window.location.href = '#/hello.html';
			  
			  }).
			  error(function(data, status, headers, config) {

				$scope.login_message = "<span class='label label-danger'>Danger Label</span>";
			  
			  });
		  
		 };
	
	}
	
]);

synergyControllers.controller('createEventController', ['$scope',//
	
	function($scope) {
	
		$scope.result = "";
	
		$scope.master = {name: "", startDateTime: "", street: "",
			apt: "", city: "", state: "", zip: "",
			info: "", picture: "",
				endDateTime: ""};
		
		/*$http.post('/someUrl', $scope.master).
		  success(function(data, status, headers, config) {
			// this callback will be called asynchronously
			// when the response is available
		  }).
		  error(function(data, status, headers, config) {
			// called asynchronously if an error occurs
			// or server returns response with an error status.
		  });*/
		  
		  $scope.submit = function() {
				$scope.master = $scope.eform;
				$scope.result = $scope.master;
			};
	}
	
]);