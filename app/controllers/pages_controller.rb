class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def test
  end

  def mydashboard
    @languages = Language.all
    @users_score = User.order(score: :desc)
    @users_time = User.includes(:submissions).order("submissions.time_taken ASC").distinct
  end

  def profile
    @user = current_user
    @languages = Language.all
  end
end
