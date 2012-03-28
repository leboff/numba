module EmailHelper
  def email_count
    pluralize(current_user.emails.count, "email")
  end
end
