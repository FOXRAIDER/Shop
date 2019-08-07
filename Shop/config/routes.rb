Rails.application.routes.draw do
  devise_for :users
    get 'u' => 'new_shop#q'
    resources :pages
    root 'posts#main_page', as: 'home'
    get 'about' => 'pages#about', as: 'about'
    get 'show' => 'pages#show'
end
