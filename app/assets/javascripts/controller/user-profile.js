var myTwitter = angular.module('myTwitter', [])

myTwitter.controller('userProfileCtrl', function($scope){
  $scope.total = 140;
  $scope.total_tweet_len = $scope.total;
  $scope.tweetText = "";
  if ($scope.tweetText.length > $scope.total){
    alert("hello");
  }

});