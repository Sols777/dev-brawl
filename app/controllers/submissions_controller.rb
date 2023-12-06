class SubmissionsController < ApplicationController
  def new
    @language = Language.find(params[:language_id])
    @challenge = Challenge.where(language_id: @language.id).sample
    @submission = Submission.new
  end

  def create
    @submission = Submission.new(submission_params)
    @submission.user = current_user
    @submission.challenge = Challenge.find(params[:challenge_id])
    if @submission.save
      current_user.update_score(@submission.challenge.expected_score) if @submission.succeed?
      redirect_to mydashboard_path()
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def submission_params
    params.require(:submission).permit(:succeed, :time_taken)
  end
end
