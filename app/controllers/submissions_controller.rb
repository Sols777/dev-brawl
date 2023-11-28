class SubmissionsController < ApplicationController

  def show
    @venue = Venue.find(params[:id])
  end

  def new
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

  def score
    score = @submission.end_time - @submission.start_time
    @submission.actual_points + 1 if score = something
  end

  private

  def submission_params
    params.require(:submission).permit(:start_time, :end_time, :description,
                                       :result, :actual_points, :user_id, :challenge_id)
  end
end
