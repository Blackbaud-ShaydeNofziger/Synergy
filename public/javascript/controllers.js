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
])