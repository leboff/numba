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

end