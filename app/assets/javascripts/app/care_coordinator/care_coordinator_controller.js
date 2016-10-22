(function() {

  angular.module('homeless').controller('careCoordinatorController', ['$scope', careCoordinatorController]);

  function careCoordinatorController($scope) {
    $scope.message = 'this should show up on the scope';
  }
})();
