require_dependency "survey/application_controller"

module Survey
  class QuestionOptionsController < ApplicationController
    before_action :set_question_option, only: [:show, :edit, :update, :destroy]
    before_filter :find_poll_and_question

    # GET /question_options/1
    def show
    end

    # GET /question_options/new
    def new
      @question_option = Survey::QuestionOption.new
    end

    # GET /question_options/1/edit
    def edit
    end

    # POST /question_options
    def create
      @question_option = Survey::QuestionOption.new(question_option_params)

      if @question_option.save
        redirect_to poll_question_path(@poll, @question), notice: 'Question option was successfully created.'
      else
        render action: 'new'
      end
    end

    # PATCH/PUT /question_options/1
    def update
      if @question_option.update(question_option_params)
        redirect_to poll_question_path(@poll, @question), notice: 'Question option was successfully updated.'
      else
        render action: 'edit'
      end
    end

    # DELETE /question_options/1
    def destroy
      @question_option.destroy
      redirect_to question_options_url, notice: 'Question option was successfully destroyed.'
    end

    private
      def find_poll_and_question
        @poll = Poll.find(params[:poll_id])
        @question = Question.find(params[:question_id])
      end
      
      # Use callbacks to share common setup or constraints between actions.
      def set_question_option
        @question_option = QuestionOption.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def question_option_params
        params.require(:question_option).permit(:question_id, :title)
      end
  end
end
