(function() {
  angular.module('homeless').controller('eventActionController', ['$scope', '$http', eventActionController]);

  function eventActionController($scope, $http) {
    $scope.$on('showEventAction', function(_, data) {
      $http.get('/events/' + data.eventId).then(function(event) {
        $scope.triggerEvent = event.data
        $scope.takingAction = true;
      });
    });

    $scope.cancelEventAction = function() {
      $scope.takingAction = false;
    };

    $scope.eventResolved = function() {
      $http.put('/events/' + $scope.triggerEvent.id, {resolution: 'no-action'})
        .then(function() {
          $scope.takingAction = false;
      });
    };

    $scope.update = function() {
      console.log('updating');
      $scope.takingAction = false;
    };

    $scope.createQualifiedNeed = function() {
      $http.put('/events/' + $scope.triggerEvent.id, {resolution: 'qualified-need-created'})
        .then(function() {
          $scope.takingAction = false;
          $scope.$emit('show-add-qualified-need-form', $scope.triggerEvent);
      });
    };
  }
})();

