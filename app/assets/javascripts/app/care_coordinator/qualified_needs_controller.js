(function() {
  angular.module('homeless').controller('qualifiedNeedsController', ['$scope', '$http', qualifiedNeedsController]);

  function qualifiedNeedsController($scope, $http) {
    $scope.showForm = false;
    $scope.addQualifiedNeed = function() {
      $scope.$emit('show-add-qualified-need-form', {});
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
