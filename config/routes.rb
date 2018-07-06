Rails.application.routes.draw do

  root 'home#index'

  get '/burcar_ubs', to: 'home#buscar_ubs'

end
