module ListingsHelper
  def listing_count
    pluralize(current_user.listings.count, "listing")
  end

  def emails

  end
end