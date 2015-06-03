Rails.application.routes.draw do
  devise_for :users
  
  root 'pages#home'

  post 'record/:mood' => 'pages#record_mood', as: :record_mood
end
