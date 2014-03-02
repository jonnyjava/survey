Survey::Engine.routes.draw do

  root to: "polls#index"
  resources :polls do
    resources :questions, :boolean_questions, :single_choice_questions, :multiple_choice_questions do
			resources :question_options
		end
  end
end
