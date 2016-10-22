(function() {

  angular.module('homeless').controller('careCoordinatorController', ['$scope', '$http', careCoordinatorController]);

  function careCoordinatorController($scope, $http) {
    $scope.showForm = false;

    $scope.addQualifiedNeed = function() {
      $scope.form = {};
      $scope.showForm = true;
    };

    $scope.on('refresh-qualified-needs', function() {
      $http.get('/qualified_need').then(function(needs) {
        $scope.qualifiedNeeds = needs;
      });
    });
  }
})();
