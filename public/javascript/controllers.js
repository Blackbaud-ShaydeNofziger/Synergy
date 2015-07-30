var synergyControllers = angular.module('synergyControllers', []);

synergyControllers.controller('IndexController', ['$scope',
	function($scope)	{
		$scope.username = "Shayde";
	}
]);