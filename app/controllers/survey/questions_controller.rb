require_dependency "survey/application_controller"

module Survey
  class QuestionsController < ApplicationController
    before_action :set_question, only: [:show, :edit, :update, :destroy]
    before_filter :find_poll
    # GET /questions
    def index
      @questions = @poll.questions
    end

    # GET /questions/1
    def show
    end

    # GET /questions/new
    def new
      @question = Survey::Question.new
    end

    # GET /questions/1/edit
    def edit
    end

    # POST /questions
    def create
      @question = Survey::Question.new(question_params)
      if @question.save
        redirect_to poll_path(@poll), notice: 'Question was successfully created.'
      else
        render action: 'new'
      end
    end

    # PATCH/PUT /questions/1
    def update
      if @question.update(question_params)
        redirect_to poll_path(@poll), notice: 'Question was successfully updated.'
      else
        render action: 'edit'
      end
    end

    # DELETE /questions/1
    def destroy
      @question.destroy
      redirect_to poll_path(@poll), notice: 'Question was successfully destroyed.'
    end

    def find_poll
      @poll = Poll.find(params[:poll_id])
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_question
        @question = Question.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def question_params
        params.require(:question).permit(:title, :poll_id)
      end
  end
end
