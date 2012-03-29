class ConnectionsController < ApplicationController
  respond_to :html, :js
  def create
    #param should come in the form of userlist (aka username+list)
    #so first thing we need to do is split everything from before the + and after the +
    @listing = find_list(params[:connection]["userlist"])
    @connection = current_user.connections.build(:listing => @listing) if @listing
    Rails.logger.info @connection.to_yaml
    @connection.save if @connection

    respond_with @connection, :location => connections_url

  end

protected
  def find_list(userlist)
      if userlist =~ /([^\+]*)\+?(.*)$/
        if !$1.empty? and !$2.empty?
          user = User.where(:username=> $1).first
          user.listings.where(:name => $2).first if user else nil
          ##if $2 is empty check for default listing
        end
      end
  end
end