(function() {
  angular.module('homeless').directive('eventAction', [function() {
    return {
      restrict: 'E',
      controller: 'eventActionController',
      templateUrl: 'care_coordinator/event_action.html'
    };
  }]);
})();


