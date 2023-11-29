class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def test
  end

  def mydashboard
    # @leaderboard = Leaderboard.sample
    @languages = Language.all
  end

  def profile
    @user = current_user
  end
end
