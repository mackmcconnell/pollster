class ResponsesController < ApplicationController

  def create
    @poll = Poll.find_by_shorty(params[:shorty])
    @ques = @poll.questions.find(params[:question_id])
    @response = @ques.responses.new(params[:response])
    if @response.save
      redirect_to "http://localhost:3000/#{@poll.shorty}"
    end
  end

end

#
# def create
#   @poll = Poll.find(params[:poll_id])
#   @question = @poll.questions.build(params[:question])
#   if @question.save
#     redirect_to @question.poll
#   end
# end