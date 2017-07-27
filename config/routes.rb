Rails.application.routes.draw do
  root to: 'hot_reads#index'
  namespace :api do
    namespace :v1 do
      resources :reads, only: [:index, :create]

    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
