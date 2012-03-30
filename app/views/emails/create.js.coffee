# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$('<%= escape_javascript(render(:partial => @email)) if @email%>')
  .appendTo('.emails')
  .hide()
  .fadeIn()

refresh();
destroyDraggable(".listing_draggable");
addDraggable(".listing_draggable");
$('#new_email')[0].reset()
