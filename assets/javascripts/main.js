$(function() {
  $("a[href^='http']").attr("target", "_blank");
  return $(".post").fitVids();
});

$(window).load(function() {
  return $(".js-toplink").show().addClass("magictime foolishIn");
});
