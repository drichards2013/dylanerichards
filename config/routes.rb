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

  %w(running mindfulness meditation photography programming contact about).each do |tag|
    get "tags/#{tag}" => "pages##{tag}", as: "#{tag}"
  end

  get 'tags/:tag', to: 'posts#index', as: :tag
end
