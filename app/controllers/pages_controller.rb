class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def leaderboards
    @languages = Language.all
    @user = current_user
    @users_score = User.order(score: :desc)
    @users_time = User.includes(:submissions).order("submissions.time_taken ASC").distinct
  end

  def mydashboard
    @languages = Language.all
    @users_score = User.order(score: :desc)
    @users_time = User.includes(:submissions).order("submissions.time_taken ASC").distinct
  end

  def profile
    @user = current_user
    @languages = Language.all
    @win_percentage = calculate_win_percentage(@user.submissions)
  end

  private

  def calculate_win_percentage(submissions)
    return 0 if submissions.empty?

    win_count = submissions.count { |submission| submission.succeed }
    (win_count.to_f / submissions.count) * 100
  end
end
