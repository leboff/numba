$(document).ready ->
            $( ".listing_list" ).sortable({
                connectWith: ".listing_list",
                receive:  (event, ui )->
                  console.log($(this).attr('id') + ' got ' + ui.sender[0].id)
                  $.post('/add', {listing: $(this).attr('id'), listable: ui.sender[0].id })
                ,
                revert: true
            });
            $( ".listable" ).draggable({
                connectToSortable: ".listing_list",
                helper: "clone",
                revert: "invalid"

            });
            $( "ul, li" ).disableSelection();
