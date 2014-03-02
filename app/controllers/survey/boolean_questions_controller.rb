require_dependency "survey/application_controller"

module Survey
  class BooleanQuestionsController < QuestionsController
    def new
      @question = Survey::BooleanQuestion.new
    end
        
    def create
      @question = Survey::BooleanQuestion.new(question_params)
      if @question.save
        redirect_to poll_path(@poll), notice: 'Boolean Question was successfully created.'
      else
        render action: 'new'
      end
    end
  private
    def question_params
      params.require(:boolean_question).permit(:title, :poll_id)
    end
  end
end
