Rails.application.routes.draw do
	devise_for :users, controllers: {
		registrations: :registrations,
		confirmations: :confirmations
	}
	root controller: :articles, action: :index
	resources :articles, only: [:index, :show, :create, :new]
	resources :categories, only: [:show]

	namespace :staff_content do
    resources :articles
	end

	namespace :api do
    namespace :v1 do
      resources :articles, only: [:index], constraints: { format: 'json' }
    end
	end
end
