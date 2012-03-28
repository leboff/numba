# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$('<%= escape_javascript(render(:partial => @listing))%>')
  .appendTo('.listings')
  .hide()
  .fadeIn()

$(".listing_list" ).sortable({
                connectWith: ".listing_list",
                revert: true
            });
$('#new_listing')[0].reset()

$('#listings_count').html '<%= listing_count %>'