Rails.application.routes.draw do
  devise_for :admins, controllers: { registrations: "registrations"}
  mount Ckeditor::Engine => '/ckeditor'
  root to: "posts#index"

  resources :posts
end