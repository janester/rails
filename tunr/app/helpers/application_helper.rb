module ApplicationHelper
  def intellinav
    links = ""
    if @current_user.present?
      if @current_user.is_admin
        links += "<li>#{link_to('Show Users', users_path)}</li>"
        links +=
        "<li class='has-flyout'>
          <a href='#'>Admin</a>
          <a href='#' class='flyout-toggle'><span> </span></a>
          <ul class='flyout' style='display: none; '>
            <li>#{link_to('New Artist', new_artist_path)}</li>
            <li>#{link_to('New Album', new_album_path)}</li>
            <li>#{link_to('New Genre', new_genre_path)}</li>
            <li>#{link_to('New Song', new_song_path)}</li>
          </ul>
        </li>"
      else
        links +=
        "<li class='has-flyout'>
          <a href='/mixtapes'>Mixtapes</a>
          <a href='#' class='flyout-toggle'><span> </span></a>
          <ul class='flyout' style='display: none; '>
            <li>#{link_to('New Mixtape', new_mixtape_path)}</li>"

        @current_user.mixtapes.order(:name).each do |mixtape|
          links += "<li>#{link_to(mixtape.name, mixtape)}</li>"
        end
        links += "</ul></li>"

      end

      links += "<li>#{link_to('Edit', edit_users_path)}</li>"
      links += "<li>#{link_to(@current_user.name + ' -' + number_to_currency(@current_user.balance), login_path, :method => :delete, :confirm => "Are you sure you want to log out?")}</li>"


    else
      "<li>#{link_to("Create Account", new_user_path)}</li>" +
        "<li>#{link_to("Login", login_path)}</li>"
    end

  end

end

# <li><%= link_to("Create Account", new_user_path)%></li>
# <li><%= link_to("Login", login_path) %></li>
# <li><%= link_to("Login Out", login_path, :method => :delete, :confirm => "Are you sure you want to log out?") %></li>
# <li><a href="#"><%=  @current_user.try(:name) %></a></li>
