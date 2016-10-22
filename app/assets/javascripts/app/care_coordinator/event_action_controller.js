(function() {
  angular.module('homeless').controller('eventActionController', ['$scope', '$http', eventActionController]);

  function eventActionController($scope, $http) {
    $scope.$on('showEventAction', function(_, data) {
      $http.get('/events/' + data.eventId).then(function(event) {
        $scope.triggerEvent = event.data
        $scope.takingAction = true;
      });
    });

    $scope.cancel = function() {
      $scope.takingAction = false;
    };

    $scope.update = function() {
      console.log('updating');
      $scope.takingAction = false;
    };

    $scope.createQualifiedNeed = function() {
      console.log('create qualified need');
      $scope.takingAction = false;
    };
  }
})();

