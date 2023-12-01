class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def test
  end

  def mydashboard
    @languages = Language.all
    @users = User.order(score: :desc)
  end

  def profile
    @user = current_user
    @languages = Language.all
  end
end
