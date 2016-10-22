(function() {
  angular.module('homeless', ['templates']);

  angular.module('homeless').directive('foo', [fooDirective]);

  function fooDirective() {
    return {
      restrict: 'E',
      controller: 'fooController',
      templateUrl: 'foo.html',
    };
  }

  angular.module('homeless').controller('fooController', ['$scope', fooController]);

  function fooController($scope) {
    $scope.message = 'this should show up on the scope';
  }
})();
