Survey::Engine.routes.draw do

  root to: "polls#index"
  resources :polls do
    resources :questions do
			resources :question_options
		end
  end
end
