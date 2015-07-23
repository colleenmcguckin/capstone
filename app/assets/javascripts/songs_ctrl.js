(function(){
  "use strict";

  angular.module("app").controller("songsCtrl", function($scope, $http){

  var setup = function(){
    $http.get("/api/v1/songs.json").then(function(response){

      $scope.songs = response.data.songs;

    });
  }
    setup();
    window.scope = $scope;

  })

}());