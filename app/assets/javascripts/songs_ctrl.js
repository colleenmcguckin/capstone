(function(){
  "use strict";

  angular.module("app").controller("songsCtrl", function($scope, $http){

  var setup = function(){
    $http.get("/api/v1/songs.json").then(function(response){

      $scope.songs = response.data.songs;
      $scope.keys = response.data.keys;
      $scope.time_signatures = response.data.time_signatures;
      $scope.tempos = response.data.tempos;

    });
  }
    setup();

  $scope.addSong = function(songTitle, key, timeSignature, tempo){
    var song = {
      title: songTitle,
      key: key.id,
      time_signature: timeSignature.id,
      tempo: tempo.id
    };

    $http.post('/api/v1/songs.json', song).then(function(response){
      $scope.songs.push(song);
    }, function(error) {
      $scope.errors = error.data.errors;
    });

    window.location = "/structures/new?song=#{song.id}";
    
  }

    window.scope = $scope;

  })


}());