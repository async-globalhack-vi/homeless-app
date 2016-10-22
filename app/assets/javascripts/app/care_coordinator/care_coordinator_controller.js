(function() {

  angular.module('homeless').controller('careCoordinatorController', ['$scope', careCoordinatorController]);

  function careCoordinatorController($scope) {
    $scope.showForm = false;

    $scope.addQualifiedNeed = function() {
      $scope.form = {};
      $scope.showForm = true;
    };
  }
})();
