@IndexCtrl = ($scope, $location) ->
  $scope.title = "My Tweeter"
  $scope.data = 
    tweets: [
      {
        hashtags: "Some Hashtags that relate"
        content: "Some Really Cool Tweet"
      },
      {
        hashtags: "Some Hastags that really really relate"
        content: "Some MORE REALLY Cool Tweet"
      }
    ]

  $scope.viewTweet = (tweetId) ->
    console.log "Hey Tweeter"
    $location.url("/tweet/#{tweetId}")