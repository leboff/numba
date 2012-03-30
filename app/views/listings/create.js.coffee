# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$('<%= escape_javascript(render(:partial => @listing)) if @listing %>')
  .appendTo('#listings')
  .hide()
  .fadeIn()

refresh();
destroyDroppable(".listing_droppable");
addDroppable(".listing_droppable" );
$('#new_listing')[0].reset()