(function() {
  angular.module('homeless').directive('events', [function() {
    return {
      restrict: 'E',
      controller: 'eventsController',
      templateUrl: 'care_coordinator/events.html',
    };
  }]);
})();

