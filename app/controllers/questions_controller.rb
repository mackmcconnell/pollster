class QuestionsController < ApplicationController
  def create
    @poll = Poll.find(params[:poll_id])
    @question = @poll.questions.build(params[:question])
    if @question.save
      redirect_to @question.poll
    end
  end

  def destroy
    @poll = Poll.find(params[:poll_id])
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to @poll
  end

  def edit
    @poll = Poll.find(params[:poll_id])
    @question = Question.find(params[:id])
  end

  def update
    @poll = Poll.find(params[:poll_id])
    @question = Question.find(params[:id])
    @question.update_attributes(params[:question])
    @question.save
    redirect_to @poll
  end
end


 # {"authenticity_token"=>"87YsjPcxyaQu7pJZdqqxuHzpSxJ1Kk8/xj307enPme4=", "poll_id"=>"4", "id"=>"6"}