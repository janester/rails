module ApplicationHelper
  def intellinav
    links = ""
    if @current_user.present?
      links += "<li>#{link_to((@current_user.name).titleize, login_path, :method => :delete, :confirm => "Are you sure you want to log out?")}</li>"
    else
      links += "<li>#{link_to('Create User', new_user_path)}</li>"
      links += "<li class='divider show-for-medium-and-up'></li>"
      links += "<li>#{link_to('Login', login_path)}</li>"
    end
  end
end
