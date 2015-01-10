Qhh::Application.routes.draw do
  root "pages#home"    
  get "home", to: "pages#home", as: "home"
  get "inside", to: "pages#inside", as: "inside"
  get "/contacto", to: "pages#contact", as: "contacto"
  post "/emailconfirmation", to: "pages#email", as: "email_confirmation"
  
  get "posts", to: "pages#posts", as: "posts"
  get "posts/:id", to: "pages#show_post", as: "post"    
  devise_for :users
  
  namespace :admin do
    root "base#index"
    resources :users
    get "posts/drafts", to: "posts#drafts", as: "posts_drafts"
    get "posts/dashboard", to: "posts#dashboard", as: "posts_dashboard"
    resources :posts
  end

  get "/myqhh", to: "pages#myqhh", as: "myqhh"
  get "/encuentra", to: "pages#encuentra", as: "encuentra"
  get "/categorias/:id", to: "pages#show_category", as: "categorias"
  
end
