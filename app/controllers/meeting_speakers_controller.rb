class MeetingSpeakersController < ApplicationController

  def create
    meetingspeaker = Meetingspeaker.new(
      meeting_id: params[:meeting_id],
      speaker_id: params[:speaker_id]
    )
    if meetingspeaker.save
      render json: meetingspeaker
    else 
     render json: {errors: meetingspeaker.errors.full_messages}, status: :patial_content
    end 
 end 
  

  def index
    meetingspeaker = Meetingspeaker.all
    render json: meetingspeaker
  end 



end
