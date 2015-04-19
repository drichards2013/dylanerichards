Dylanrichards::Application.routes.draw do
  root 'pages#home'

  resources :quotes
  resources :photos
  resources :posts, :path => 'blog'
  resources :reading_lists, only: [:new, :create, :edit, :update, :show]

  get '/reading-list' => 'reading_lists#show', id: 1, as: 'main_reading_list'
  get '/reading-list/edit' => 'reading_lists#edit', id: 1

  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  get 'blog' => 'posts#index', as: 'blog'

  get 'contact' => 'pages#contact', as: 'contact'
  get 'about' => 'pages#about', as: 'about'

  get 'projects' => 'pages#projects', as: 'projects'
  get 'photography' => 'photos#index', as: 'photogallery'

  get 'tags/running' => 'pages#running', as: 'running'
  get 'tags/mindfulness' => 'pages#mindfulness', as: 'mindfulness'
  get 'tags/meditation' => 'pages#meditation', as: 'meditation'
  get 'tags/photography' => 'pages#photography', as: 'photography'
  get 'tags/programming' => 'pages#programming', as: 'programming'

  get 'tags/:tag', to: 'posts#index', as: :tag
end
