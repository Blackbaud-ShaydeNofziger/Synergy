var synergyControllers = angular.module('synergyControllers', []);

synergyControllers.controller('IndexController', ['$scope',
  function($scope)  {
    $scope.username = "Shayde";
  }
]);

synergyControllers.controller('ProfileController', ['$scope', '$http',
  function($scope, $http) {
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
  function($scope, $http) {
    $scope.master = {};

    $scope.update = function(user)  {
      $scope.master = angular.copy(user);
    };

    $scope.reset = function() {
      $scope.user = angular.copy($scope.master);
    };

  }
]);

synergyControllers.controller('OrganizationController', ['$scope', '$http',
  function($scope, $http) {
    $scope.organization = {};
    
    $scope.create = function(org) {
      
    }
  }
]);

synergyControllers.controller('signInController', ['$scope', '$http', '$window',
  function($scope, $http, $window)  {

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

synergyControllers.controller('createEventController', ['$scope',
  
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

synergyControllers.controller('BrowseEventsController', ['$scope',
  function($scope)  {
    function formatTime(time) {
      var d = time.getDate();
      var m = time.getMonth() + 1;
      var y = time.getFullYear();
      var t = time.toTimeString().split(' ')[0];
      return m.toString() + "/" + d.toString() + "/" + y.toString() + " " + t;
    }
    var start1 = formatTime(new Date(1438272000000));
    var end1   = formatTime(new Date(1438290000000));
    var start2 = formatTime(new Date(1438172000000));
    var end2   = formatTime(new Date(1438190000000));


    $scope.events = [
      {
        'startTime': start1,
        'endTime': end1,
        'location': 'Charleston Soup Kitchen',
        'organization': 'Charleston Church Co.',
        'info': 'Serve the needy in the community lunch and dinner',
        'image': 'http://i.imgur.com/tYfBwCH.jpg'
      },
      {
        'startTime': start2,
        'endTime': end2,
        'location': 'Wando High School',
        'organization': 'Wando School District',
        'info': 'Teach highschoolers how to code!',
        'image': 'http://images.clipartpanda.com/school-books-images-back-to-school-books.jpg'
      }
    ];
  }

]);