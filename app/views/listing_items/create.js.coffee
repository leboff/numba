$('<%= escape_javascript(render(:partial => @listing_item)) if @listing_item %>')
  .appendTo($('#listing_<%= @listing_item.listing.id %>').find('.<%= @listing_item.listable_type.downcase %>_list'))
