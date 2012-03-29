# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$('<%= escape_javascript(render(:partial => @phone)) if @phone %>')
  .appendTo('.phones')
  .hide()
  .fadeIn()

refresh();
destroyDraggable(".listable");
addDraggable(".listable");
$('#new_phone')[0].reset()