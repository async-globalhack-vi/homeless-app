(function() {
  angular.module('homeless').controller('qualifiedNeedFormController', ['$scope', qualifiedNeedFormController]);

  function qualifiedNeedFormController($scope) {
    $scope.submit = function() {
      console.log($scope.form);
    };

    $scope.cancel = function() {
      $scope.showForm = false;
    };
  }
})();
