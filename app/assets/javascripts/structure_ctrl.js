(function(){
  "use strict";

  angular.module("app").controller("structureCtrl", function($scope, $http){

  var setup2 = function(){
    $http.get("/api/v1/songs.json").then(function(response){

      $scope.songs = response.data.songs;
      $scope.keys = response.data.keys;
      $scope.time_signatures = response.data.time_signatures;
      $scope.tempos = response.data.tempos;
      $scope.element_names = response.data.element_names;

    });
  }

    setup2();

  $scope.elementCount = 0
  $scope.inputFields = [{}]

  $scope.addElementField = function(){
    $scope.elementCount++;
    var songElement = {
      };
    $scope.inputFields.push(songElement);
  }

  $scope.removeElementField = function(inputField){
    $scope.elementCount--;
    var index = $scope.inputFields.indexOf(inputField);
    $scope.inputFields.splice(index, 1);
  }

  $scope.songStructure = []
  


 


  // $scope.addElementField = function(){
  //   console.log("===============")
  //   console.log("PIZZA")
  //   console.log("===============")
  //   var div = document.createElement("div");
  //   div.style.width = "100px";
  //   div.style.height = "100px";
  //   div.style.background = "red";
  //   div.style.color = "white";
  //   div.innerHTML = '<div class="structure_div">
  //   <select ng-model="elementSelected" ng-options="element.element_name for element in element_names"></select>
  //   <select ng-model="lengthSelected">
  //     <option value="1">1</option>
  //     <option value="2">2</option>
  //     <option value="4">4</option>
  //     <option value="8">8</option>></select>
  //   <input ng-model="optionalNotes" placeholder="Optional Notes">
  // </div>  
  // <div class="structure_div">
  //   <h3 ng-click="addElementField()">+</h3>
  // </div>
  // <div class="structure_div">
  //   <h3 ng-click="removeElementField()">-</h3>
  // </div>';
  //   div.class="structure_div"

  //   document.body.appendChild(div);
  // }

  // $scope.removeElementField = function(){
  //   console.log("===============")
  //   console.log("CAT")
  //   console.log("===============")
  //   var removeable = document.getElementById('structure_container').getElementsByTagName('div');
   
  //   document.body.removeChild(removeable);
  // }

    window.scope = $scope;

  })

}());