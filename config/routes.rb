Dylanrichards::Application.routes.draw do
  root 'pages#home'

  resources :quotes
  resources :photos
  resources :posts, :path => 'blog'
  resources :reading_lists, only: [:new, :create, :edit, :update, :show]

  get '/reading-list' => 'reading_lists#show', id: 1, as: 'main_reading_list'
  get '/reading-list/edit' => 'reading_lists#edit', id: 1

  get 'blog' => 'posts#index', as: 'blog'

  get 'projects' => 'pages#projects', as: 'projects'
  get 'photography' => 'photos#index', as: 'photogallery'

  get 'tags/:tag', to: 'posts#index', as: :tag

  %w(contact about).each do |page|
    get "#{page}" => "pages##{page}", as: "#{page}"
  end

  %w(running mindfulness meditation photography programming).each do |tag|
    get "tags/#{tag}" => "pages##{tag}", as: "#{tag}"
  end

  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
