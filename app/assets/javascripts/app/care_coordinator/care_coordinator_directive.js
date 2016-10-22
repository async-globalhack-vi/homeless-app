(function() {
  angular.module('homeless').directive('careCoordinator', [function() {
    return {
      restrict: 'E',
      controller: 'careCoordinatorController',
      templateUrl: 'care_coordinator/care_coordinator.html',
    };
  }]);
})();
