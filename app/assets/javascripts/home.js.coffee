window.addDroppable = (selector) -> $(selector).droppable({
      hoverClass: "light_listing",
      drop: (event, ui) ->
        lister= $(this).find('ul').first()
        $.post('/listing_items', {listing: $(this).attr('id'), listable: ui.draggable.attr('id') },
          (data)->

          ,
          "script"
        )


});

window.destroyDroppable = (selector) -> $(selector).droppable("destroy")

window.destroyDraggable = (selector) -> $(selector).draggable("destroy")

window.addDraggable = (selector) -> $(selector).draggable({
                helper: "clone",
                revert: "invalid"
            });

window.refresh = ->
       $('.l li').addClass('listable');
       $('#listings .listing').addClass('listing_droppable')

$(document).ready ->
            refresh();
            addDroppable(".listing_droppable" );
            addDraggable(".listable");
            $( "ul, li" ).disableSelection();


