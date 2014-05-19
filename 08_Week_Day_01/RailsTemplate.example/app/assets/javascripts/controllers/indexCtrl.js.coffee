@IndexCtrl = ($scope) ->
  $scope.title = "My blog"
  $scope.data =
    posts: [
      {
        title: "Blog Post 1",
        content: "This is some sweet content that only coolest people could write."
      },
      {
        title: "Blog Post 2",
        content: "Some really sweet content blah blah blah."
      }
    ]
