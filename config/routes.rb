Rails.application.routes.draw do
  resources :ents
  get 'ents/:id/coverage', to: 'ents#coverage', as: 'ents_coverage'
  get 'ents/:id/timelapses', to: 'ents#timelapses', as: 'ents_timelapses'
  get 'ents/:id/photos', to: 'ents#photos', as: 'ents_photos'
  
  devise_for :users
  get 'home/index'
  root to: "home#index"
end
