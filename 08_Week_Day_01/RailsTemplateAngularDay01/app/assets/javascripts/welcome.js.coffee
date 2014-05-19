# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

Tweeter = angular.module("Tweeter", ['ngRoute'])

Tweeter.config(["$routeProvider", ($routeProvider) ->
  $routeProvider.when('/tweet/:tweetId', { templateUrl: "../assets/tweet.html", controller: "TweetCtrl"})
  $routeProvider.otherwise( {templateUrl: '../assets/index.html', controller: "IndexCtrl"})
])