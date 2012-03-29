window.addSortable = (selector) -> $(selector).sortable({
    receive:  (event, ui )->
      window.pitem = ui.item
      window.received = true if ui.sender.attr('class').indexOf('listable') != -1
      console.log(ui.sender.attr('class').indexOf('listable'))
    ,
    stop: (event, ui) ->
      if window.received
        $.post('/add', {listing: $(this).attr('id'), listable: window.pitem.attr('id')  },
          (data)->
            $(ui.item).fadeOut("slow") if (!data.success)
        )
        window.received = false;
    ,
    revert: true
});

window.destroySortable = (selector) -> $(selector).sortable("destroy")
window.destroyDraggable = (selector) -> $(selector).draggable("destroy")

window.addDraggable = (selector) -> $(selector).draggable({
                connectToSortable: ".listing_list",
                helper: "clone",
                revert: "invalid"

            });

window.refresh = ->
       $('.l li').addClass('listable');
$(document).ready ->
            refresh();
            addSortable(".listing_list" );
            addDraggable(".listable");
            $( "ul, li" ).disableSelection();


