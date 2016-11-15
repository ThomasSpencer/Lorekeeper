class SessionsController < ApplicationController
  before_action :find_story

  def index
    @sessions = Session.all
  end

  def show
    @session = Session.find(params[:id])
  end

  def new
    @session = Session.new
  end

  def edit
    @session = Session.find(params[:id])
  end

  def create
    @session = Session.new(session_params)
    @session.story_id = @story.id

    @story.total_sessions += 1
    @session.session_number = @story.total_sessions

    @story.save

    if @session.save
      redirect_to story_sessions_path(@story)
    else
      render 'new'
    end
  end

  def update
    @session = Session.find(params[:id])

    if @session.update(session_params)
      redirect_to story_session_path(@story, @session)
    else
      render 'edit'
    end
  end

  def destroy
    @session = Session.find(params[:id])

    if @session.destroy
      redirect_to story_sessions_path(@story)
    end
  end

  private

  def session_params
    params.require(:session).permit(:notes)
  end
end
