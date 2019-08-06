Rails.application.routes.draw do
    get 'u' => 'new_shop#q'
    resources :pages
    root 'posts#main_page', as: 'home'
    get 'about' => 'pages#about'
end
