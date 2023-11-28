class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def mydashboard
    @leaderboard = Leaderboard.all
    @languages = Language.all
  end

  def profile
    @user = current_user
  end

end
