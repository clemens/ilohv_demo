Rails.application.routes.draw do
  mount Ilohv::Engine, at: Ilohv::Engine.config.url_root

  root to: 'pages#index'
end
