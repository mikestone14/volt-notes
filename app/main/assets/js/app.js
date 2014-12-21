$(document).ready(function() {
  setTimeout(function() {
    $(".md").html(markdown.toHTML($(".note-body").text()));
  }, 1000);
});
