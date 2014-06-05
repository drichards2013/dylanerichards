Dylanrichards::Application.routes.draw do
  get "jquery/practice"
  resources :quotes

  resources :photos

  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  

  resources :posts, :path => "blog"
  
  get 'blog' => 'posts#index', as: 'blog'


  get "pages/home"
  get "pages/about"
  get 'pages/yoga'
  get 'pages/contact'
  get 'pages/programming'



  get 'photography' => 'pages#photography', as: 'photography'
  get 'about' => 'pages#about', as: 'about'
  get 'projects' => 'pages#projects', as: 'projects'
  get 'tags/running' => 'pages#running', as: 'running'
  get 'tags/mindfulness' => 'pages#mindfulness', as: 'mindfulness'
  get 'tags/meditation' => 'pages#meditation', as: 'meditation'
  get 'tags/programming' => 'pages#programming', as: 'programming'
  get 'contact' => 'pages#contact', as: 'contact'



  get 'tags/:tag', to: 'posts#index', as: :tag




  root 'pages#home'

  get 'blog/march202014'
  get 'blog/march212014'
  get 'blog/ruleofthirds'

end
