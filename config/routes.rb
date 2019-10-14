Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }
  get 'shorttermtrucks/showimage/:id'  => 'shorttermtrucks#showimage'
  resources :shorttermtrucks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'shorttermtrucks#index'
end
