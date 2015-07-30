var synergy = angular.module('synergy',[
	'ngRoute',
	'synergyControllers'
]);

synergy.config(['$routeProvider',
	function($routeProvider)	{
		$routeProvider.
			when('/', {
				templateUrl: '/templates/hello.html',
				controller: 'IndexController'
			}).
			when('/bye', {
				templateUrl: '/templates/bye.html',
				controller: 'IndexController'
			});
	}
]);