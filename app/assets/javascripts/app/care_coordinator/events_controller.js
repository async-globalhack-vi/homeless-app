(function() {
  angular.module('homeless').controller('eventsController', ['$scope', '$http', eventsController]);

  function eventsController($scope, $http) {
    $http.get('/events').then(function(events) {
      $scope.triggeredEvents = events.data;
    });

    $scope.claim = function(eventId) {
      console.log('event claimed: ' + eventId);
    }
  }

})();

