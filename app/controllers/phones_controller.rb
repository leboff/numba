class PhonesController < ApplicationController
  respond_to :html, :js

  def create
    @phone = Phone.new(params[:phone])
    @phone.user = current_user
    @phone.save

    respond_with @phone, :location => phones_url
  end
end
