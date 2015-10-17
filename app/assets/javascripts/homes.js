$(function() {
  $("#reviews_search input").keyup(function() {
    $.get($("#reviews_search").attr("action"), $("#reviews_search").serialize(), null, "script");
    return false;
  }); 
});
