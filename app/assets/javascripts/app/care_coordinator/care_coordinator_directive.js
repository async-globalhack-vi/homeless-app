(function() {

  angular.module('homeless').directive('careCoordinator', [function() {
    return {
      restrict: 'E',
      controller: 'careCoordinatorController',
      templateUrl: 'foo.html',
    };
  }]);

  angular.module('homeless').controller('careCoordinatorController', ['$scope', fooController]);

  function fooController($scope) {
    $scope.message = 'this should show up on the scope';
  }
})();
