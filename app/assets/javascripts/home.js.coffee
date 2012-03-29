window.addSortable = (selector) -> $(selector).sortable({
    connectWith: ".listing_list",
    receive:  (event, ui )->
      window.pitem = ui.item
    ,
    stop: (event, ui) ->
      $.post('/add', {listing: $(this).attr('id'), listable: window.pitem.attr('id')  },
        (data)->
          $(ui.item).fadeOut("slow") if (!data.success)
      )
    ,
    revert: true
});

window.addDraggable = (selector) -> $(selector).draggable({
                connectToSortable: ".listing_list",
                helper: "clone",
                revert: "invalid"

            });
$(document).ready ->
            addSortable(".listing_list" );
            addDraggable(".listable");
            $( "ul, li" ).disableSelection();


