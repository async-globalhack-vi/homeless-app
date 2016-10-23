(function() {
    angular.module('homeless').directive('eventMap', [function() {
        return {
            restrict: 'E',
            controller: 'eventMapController',
            templateUrl: 'care_coordinator/event_map.html',
            link: function(scope, elem, attr) {
                scope.renderMap = function(data) {
                    var handler = Gmaps.build('Google');
                    handler.buildMap({ internal: {id: 'multi_markers'}}, function(){
                        var markers = handler.addMarkers(data);
                        handler.bounds.extendWith(markers);
                        handler.fitMapToBounds();
                    });
                };
            }
        };
    }]);

    angular.module('homeless').controller('eventMapController', ['$scope', '$http', eventMapController]);

    function eventMapController($scope, $http) {
        $http.get('/map_data').then(function(mapData) {
            $scope.renderMap(mapData.data);
        });
    }
})();
