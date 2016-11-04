// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-wysihtml5
//= require bootstrap
//= require masonry/jquery.masonry
//= require imagesloaded
//= require lightbox
//= require_tree .


$(document).ready(function() {

  $('.wysihtml5').each(function(i, elem) {
    $(elem).wysihtml5();
  });

  $("body").addClass("animated fadeIn");

  setTimeout(function() {
    $(".dylanrichards-main").css("visibility", "visible").addClass("animated fadeIn")
  }, 750);

  setTimeout(function() {
    $("#homequote").css("visibility", "visible").addClass("animated fadeIn")
  }, 900);

  setTimeout(function() {
    $(".pagetitle").css("visibility", "visible").addClass("animated fadeIn")
  }, 250);

  setTimeout(function() {
    $(".postdate").css("visibility", "visible").addClass("animated fadeIn")
  }, 250);

  setTimeout(function() {
    $("#post").css("visibility", "visible").addClass("animated fadeIn")
  }, 400);

  setTimeout(function() {
    $("#photos").css("visibility", "visible").addClass("animated fadeIn")
  }, 400);

  $('#container').imagesLoaded( function() {
    $('#container').masonry({
      itemSelector: '.item',
      columnWidth: 70,
      isFitWidth: true
    });
  } );
});
