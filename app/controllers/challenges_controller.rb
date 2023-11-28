class ChallengesController < ApplicationController
  def method_name
    @challenge = Challenge.sample
  end
end
