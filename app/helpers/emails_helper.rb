module EmailsHelper
  def email_count
    pluralize(current_user.emails.count, "emails")
  end
end
