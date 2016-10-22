(function() {
  angular.module('homeless').controller('eventsController', ['$scope', '$http', eventsController]);

  function eventsController($scope, $http) {
    $scope.allShowing = true;

    $scope.showAll = function() {
      $scope.allShowing = true;
      refreshData();
    }

    $scope.showMine = function() {
      $scope.allShowing = false;
      refreshData();
    }

    $scope.takeAction = function(eventId) {
      $scope.$emit('showEventAction', {eventId: eventId});
    }

    function refreshData() {
      $http.get(eventsUrl()).then(function(events) {
        $scope.triggeredEvents = events.data;
      });
    }
    refreshData();

    $scope.claim = function(eventId) {
      $http.put('/events/' + eventId, {resolution: null}).then(function() {
        refreshData();
      });
    }

    function eventsUrl() {
      if ($scope.allShowing) {
        return '/events'
      } else {
        return '/events?filter=true'
      }
    }
  }
})();

