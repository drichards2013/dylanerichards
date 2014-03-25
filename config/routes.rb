Dylanrichards::Application.routes.draw do
  resources :quotes

  resources :photos

  devise_for :users
  resources :posts

  get "pages/home"
  get "pages/about"
  get "pages/photography"
  get 'pages/projects'
  get 'pages/running'
  get 'pages/yoga'
  get 'pages/mindfulness'
  get 'pages/meditation'
  get 'pages/contact'
  get 'pages/goals'

  get 'tags/:tag', to: 'posts#index', as: :tag




  root 'pages#home'

  get 'blog/march202014'
  get 'blog/march212014'
  get 'blog/ruleofthirds'

end
