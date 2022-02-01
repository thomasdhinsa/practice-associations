class SpeakersController < ApplicationController

  def create
    speaker = Speaker.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email]
    )
    if speaker.save
      render json: speaker
    else 
     render json: {errors: speaker.errors.full_messages}, status: :patial_content
    end 
 end 

def index
  speakers = Speaker.all
  render json: speakers
end 



end
