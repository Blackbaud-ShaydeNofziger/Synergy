var synergy = angular.module('synergy',[
	'ngRoute',
	'synergyControllers'
]);

synergy.config(['$routeProvider',
	function($routeProvider)	{
		$routeProvider.
			when('/', {
				templateUrl: '/templates/sign-in.html',
				controller: 'signInController'
			}).
			when('/hello', {
				templateUrl: '/templates/hello.html',
				controller: 'indexController'
			}).
			when('/bye', {
				templateUrl: '/templates/bye.html',
				controller: 'IndexController'
			});
	}
]);