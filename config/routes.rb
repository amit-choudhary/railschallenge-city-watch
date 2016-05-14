Rails.application.routes.draw do

  resources :responders, param: :name

end
