# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

hello_world = "Hello World"
console.log hello_world

javascript_loaded = ->
  console.log "Inside the function"

display_name = (first_name, last_name) ->
  console.log "#{first_name} #{last_name}"

display_name "Christopher", "Cooper"

$(document).ready = ->
  console.log "dudeman"
  console.log $("body")

$ ->
  console.log "dudemansup"
  console.log $("body")
  #$("body").hide()

Blog = angular.module("Blog", ['ngRoute'])

Blog.config(["$routeProvider", ($routeProvider) ->
  $routeProvider.when('/posts', { templateUrl: "../assets/post.html", controller: "PostCtrl"})

  $routeProvider.otherwise({ templateUrl: '../assets/index.html', controller: "IndexCtrl"})
])