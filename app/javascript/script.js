/*global $*/
document.addEventListener("turbolinks:load", function () {
$(function(){
  $('.hamburger').click(function(){
    $('.hamburger').toggleClass('active');
    $('.menu').toggleClass('open');
  });
});
});