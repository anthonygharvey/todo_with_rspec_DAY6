Rails.application.routes.draw do
  resources :users
	scope module: 'api' do
		namespace :v1 do
			resources :tasks
			resources :users
		end
	end
end
