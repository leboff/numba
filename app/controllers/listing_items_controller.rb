class ListingItemsController < ApplicationController
  respond_to :html, :js, :json

  def create
    ##lets run some checks.. make sure the user owns these before we go all willy nilly
    ##this can be cleaned up immensely
    @listing_item = ListingItem.new
    @listable = find_listable(params[:listable])

    @listing_item.listable = @listable
    @listing_item.listing = find_listing(params[:listing])

    @listing_item =
        (@listing_item.listable.user == current_user and @listing_item.listing.user == current_user and @listing_item.save) ?
            @listing_item : nil


    respond_with :listing_item => @listing_item, :location => listing_items_url
  end

  def destroy
    @listing_item = ListingItem.find(params[:id])

    if @listing_item.listing.user == current_user
      @listingitemid = @listing_item.id
      @listing_item.destroy
    end

    rescue ActiveRecord::RecordNotFound


    respond_with :listingitemid => @listingitemid, :location => listing_items_url
  end
end

private
def find_listing(value)
  if value =~ /listing_(\d\d*)$/
    return Listing.find($1)
  end
  nil
end

def find_listable(value)
  if value =~ /(.+)_(\d\d*)$/
    return $1.classify.constantize.find($2)
  end
  nil
end