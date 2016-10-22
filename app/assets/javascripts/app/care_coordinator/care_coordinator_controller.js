(function() {

  angular.module('homeless').controller('careCoordinatorController', ['$scope', '$http', careCoordinatorController]);

  function careCoordinatorController($scope, $http) {
    $scope.showForm = false;

    $scope.addQualifiedNeed = function() {
      $scope.form = {};
      $scope.showForm = true;
    };

    function refreshData() {
      $http.get('/qualified_needs').then(function(needs) {
        $scope.qualifiedNeeds = needs.data;
      });
    }
    refreshData();

    $scope.$on('refresh-qualified-needs', function() {
      refreshData();
    });
  }
})();
