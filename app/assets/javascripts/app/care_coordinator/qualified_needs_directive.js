(function() {
  angular.module('homeless').directive('qualifiedNeeds', [function() {
    return {
      restrict: 'E',
      controller: 'qualifiedNeedsController',
      templateUrl: 'care_coordinator/qualified_needs.html',
    };
  }]);
})();
