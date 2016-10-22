(function() {
  angular.module('homeless').directive('qualifiedNeedForm', [function() {
    return {
      restrict: 'E',
      controller: 'qualifiedNeedFormController',
      templateUrl: 'care_coordinator/qualified_need_form.html',
    };
  }]);
})();
