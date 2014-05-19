@TweetCtrl = ($scope, $location, $routeParams) ->
  $scope.data =
    tweet: {
      hashtags: "Really Cool Hashtag"
      content: "Some Cool Tweet"
    }
  $scope.data.tweetId = $routeParams.tweetId
  $scope.title = "My Tweeter"

  $scope.returnHome = ->
    console.log "Hey Tweeter2"
    $location.url("/")