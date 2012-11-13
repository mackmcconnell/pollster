class QuestionsController < ApplicationController
  def create
    @poll = Poll.find(params[:poll_id])
    @question = @poll.questions.build(params[:question])
    if @question.save
      redirect_to @question.poll
    end
  end
end
