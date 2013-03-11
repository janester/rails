module ApplicationHelper
  def intellinav
    links = ""
    if @current_user.present?
      nice_balance = "#{@current_user.email} | Balance:#{number_to_currency(@current_user.cash_balance)}"
      links += "<li>#{link_to(nice_balance, login_path, :method => :delete, :confirm => "Are you sure you want to log out?")}</li>"
    else
      links += "<li>#{link_to('Create Account', new_user_path)}</li>"
      links += "<li class='divider show-for-medium-and-up'></li>"
      links += "<li>#{link_to('Login', login_path)}</li>"
    end
  end
end
