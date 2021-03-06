Dylanrichards::Application.routes.draw do
  root 'pages#home'

  get '/quotes/stats', to: 'quotes#stats', as: 'quotes_stats'

  get 'blog/posts' => 'posts#posts', as: 'blog_posts'
  get 'blog/publish' => 'posts#publish', as: 'publish'
  get 'blog/unpublish' => 'posts#unpublish', as: 'unpublish'

  resources :quotes, :photos
  resources :posts, path: 'blog'
  resources :reading_lists, only: [:new, :create, :edit, :update, :show]

  get '/reading-list' => 'reading_lists#show', id: 1, as: 'main_reading_list'
  get '/reading-list/edit' => 'reading_lists#edit', id: 1

  get 'blog' => 'posts#index', as: 'blog'

  get 'projects' => 'pages#projects', as: 'projects'
  get 'photography' => 'photos#index', as: 'photogallery'

  get '/manage-photos' => 'photos#manage', as: 'manage_photos'

  get '/escalate' => 'redirects#escalate', as: 'escalate_website'
  get '/e-book' => 'redirects#e_book', as: 'escalate_e_book'
  get '/vip' => 'redirects#vip', as: 'escalate_vip'
  get '/masterclass' => 'redirects#masterclass', as: 'masterclass'
  get '/vsco' => 'redirects#vsco', as: 'vsco'
  get '/presets' => 'redirects#presets', as: 'presets'


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
