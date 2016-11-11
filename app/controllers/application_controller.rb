class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
    def find_story
      @story = Story.find(params[:story_id])
    end

end
