class MeetingsController < ApplicationController

  def create
    meeting = Meeting.new(
      title: params[:title],
      agenda: params[:agenda],
      location: params[:location],
      time: params[:time]
    )
    if meeting.save
      render json: meeting
    else 
     render json: {errors: meeting.errors.full_messages}, status: :patial_content
    end 
 end 

 def index
  meetings = Meeting.all
  render json: meetings
 end 


end
