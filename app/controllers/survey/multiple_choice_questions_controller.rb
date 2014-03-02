require_dependency "survey/application_controller"

module Survey
  class MultipleChoiceQuestionsController < QuestionsController
    def new
      @question = Survey::MultipleChoiceQuestion.new
    end
        
    def create
      @question = Survey::MultipleChoiceQuestion.new(question_params)
      if @question.save
        redirect_to poll_path(@poll), notice: 'Boolean Question was successfully created.'
      else
        render action: 'new'
      end
    end 
  private
    def question_params
      params.require(:multiple_choice_question).permit(:title, :poll_id)
    end
  end
end
