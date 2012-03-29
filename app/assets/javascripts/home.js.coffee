window.addDroppable = (selector) -> $(selector).droppable({
      hoverClass: "light_listing",
      drop: (event, ui) ->
        lister= $(this).find('ul').first()
        $.post('/add', {listing: lister.attr('id'), listable: ui.draggable.attr('id') },
          (data)->
            #if success ...add helper to list
            if (data.success)
              console.log(lister)
              lister.append(ui.draggable.clone())
            else
              $("#toast").fadeIn("slow").fadeOut("slow")
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


