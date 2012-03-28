class ListingItemsController < ApplicationController
  def create
      ##lets run some checks.. make sure the user owns these before we go all willy nilly
      @listitem = ListingItem.new
      @listable = find_listable(params[:listable])

      @listitem.listable = @listable
      @listitem.listing = find_listing(params[:listing])


      respond_to do |format|
        if @listitem.listable.user == current_user and @listitem.listing.user == current_user and @listitem.save
          format.json {render :json => {:success => true, :data=> (params)}}
        else
          format.json {render :json => {:success => false, :data=>(params)} }
        end
      end
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