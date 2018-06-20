class StaticPagesController < ApplicationController

  def home
    @user_groups = current_user.groups
  end

end
