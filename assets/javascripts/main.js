$(function() {
  $("a[href^='http']").attr("target", "_blank");
  return $(".post").fitVids();
});
