var synergy = angular.module('synergy',[
  'ngRoute',
  'synergyControllers'
]);

synergy.config(['$routeProvider',
  function($routeProvider)  {
    $routeProvider.
      when('/', {
        templateUrl: '/templates/sign-in.html',
        controller: 'signInController'
      }).
      when('/hello', {
        templateUrl: '/templates/hello.html',
        controller: 'indexController'
      }).
      when('/create_event', {
        templateUrl: '/templates/create_event.html',
        controller: 'createEventController'
      }).
      when('/bye', {
        templateUrl: '/templates/bye.html',
        controller: 'IndexController'
      }).
	  when('/home', {
		templateUrl: '/templates/home.html',
		controller: 'homePageController'
	  }).
      when('/profile', {
        templateUrl: '/templates/profile.html',
        controller: 'ProfileController'
      }).
      when('/organization/create', {
        templateUrl: '/templates/create_organization.html',
        controller: 'OrganizationController'
      }).
      when('/events/browse', {
        templateUrl: '/templates/browse_events.html',
        controller: 'BrowseEventsController'
      });
  }
]);