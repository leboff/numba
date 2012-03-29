class ListingsController < ApplicationController
  respond_to :html, :js

  def create
    @listing = Listing.new(params[:listing])
    @listing.user = current_user;
    @listing.save

    respond_with @listing, :location => listings_url

  end

  def index
    @listings = current_user.listings
  end
  def destroy

    @listing = current_user.listings.find(params[:id])
    @listingid = @listing.id
    @listing.destroy
    rescue ActiveRecord::RecordNotFound


    respond_with :listingid => @listingid, :location => listings_url
  end
end