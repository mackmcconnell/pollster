class PollsController < ApplicationController
  respond_to :html, :json


  def index
    @polls = Poll.all
    respond_with @polls
  end

  def new
    @poll = Poll.new
    respond_with @poll
  end

  def show
    @poll = Poll.find(params[:id])
    respond_with @poll
  end

  def create
    @poll = Poll.new(params[:poll])
    redirect_to polls_path if @poll.save
  end

  def view_only
    @poll = Poll.find_by_shorty(params[:shorty])
  end

  def destroy
  end

  def update
  end

  def edit
  end
end