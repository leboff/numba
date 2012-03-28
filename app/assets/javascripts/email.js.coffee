# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$('<%= escape_javascript(render(:partial => @email))%>')
  .appendTo('#emails')
  .hide()
  .fadeIn()

$('#new_email')[0].reset()

$('#emails_count').html '<%= emails_count %>'