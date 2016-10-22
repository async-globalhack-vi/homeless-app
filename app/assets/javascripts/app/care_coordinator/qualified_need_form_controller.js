(function() {
  angular.module('homeless').controller('qualifiedNeedFormController', ['$scope', '$http', qualifiedNeedFormController]);

  function qualifiedNeedFormController($scope, $http) {
    $scope.submit = function() {
      $scope.showForm = false;
      $http.post('/qualified_needs', $scope.form).then(function() {
        $scope.$emit('refresh-qualified-needs');
      });
    };

    $scope.cancel = function() {
      $scope.showForm = false;
    };
  }
})();
