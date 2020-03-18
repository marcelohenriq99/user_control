class HomeController < ApplicationController
  def index

    if current_user
      @username = current_user.name
      @email = current_user.email
    else
      redirect_to new_user_session_path, notice: 'You are not logged in.'
    end

  end
end
