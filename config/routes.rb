Rails.application.routes.draw do
post "meetings" => "meetings#create"
get "meetings" => "meetings#index"

post "speakers" => "speakers#create"
get "speakers" => "speakers#index"

post "meeting_speakers" => "meeting_speakers#create"
get "meeting_speakers" => "meeting_speakers#index"

end
