class SubmissionsController < ApplicationController
  def new
    @language = Language.find(params[:language_id])
    @challenge = Challenge.where(language_id: @language.id).sample
    @submission = Submission.new
  end

  def create
    @submission = Submission.new(submission_params)
    @submission.user = current_user
    if @submission.save
      redirect_to submission_path(@submission)
    else
      render challenges_path, status: :unprocessable_entity
    end
  end

  private

  def submission_params
    params.require(:submission).permit(:start_time, :end_time, :result, :actual_points, :user_id, :challenge_id)
  end
end
