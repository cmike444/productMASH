$ ->
  $('#projects').imagesLoaded ->
    $('#projects').masonry
      itemSelector: '.box'
      isFitWidth: true
