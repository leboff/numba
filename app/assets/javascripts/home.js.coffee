window.addDroppable = (selector) -> $(selector).droppable({
      hoverClass: "light_listing",
      drop: (event, ui) ->
        lister= $(this).find('ul').first()
        $.post('/listing_items', {listing: $(this).attr('id'), listable: ui.draggable.attr('id') },'',"script")


});

window.destroyDroppable = (selector) -> $(selector).droppable("destroy")

window.destroyDraggable = (selector) -> $(selector).draggable("destroy")

window.addDraggable = (selector) -> $(selector).draggable({
                helper: "clone",
                revert: "invalid"
            });

window.refresh = ->
       $('.l .listable').addClass('listing_draggable');
       $('#listings .listing').addClass('listing_droppable')

$(document).ready ->
            refresh();
            addDroppable(".listing_droppable" );
            addDraggable(".listing_draggable");
            $( "ul, li" ).disableSelection();


