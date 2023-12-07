class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def leaderboards
    @languages = Language.all
    @user = current_user
    # Build a hash to store language-specific data
    @languages_data = {}
    @languages.each do |language|
      language_data = Language.joins(challenges: { submissions: :user })
                              .select('languages.name AS language_name, MIN(submissions.time_taken) AS best_time, users.username AS best_username')
                              .where(id: language.id)
                              .group('languages.id, users.username')
                              .preload(challenges: { submissions: :user })
                              .order('best_time ASC')

      # Store language-specific data in the hash
      @languages_data[language.id] = language_data
    end
  end





  def mydashboard
    @languages = Language.all
    @users_score = User.order(score: :desc)
    @users_time = User.includes(:submissions).order("submissions.time_taken ASC").distinct
  end

  def best_users
    challenges.flat_map { |challenge| challenge.submissions.min_by(&:time_taken)&.user }
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
