class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
    def find_story
      @story = Story.find(params[:story_id])
    end

    def find_plane
      @plane = Plane.find(params[:plane_id])
    end

    def find_continent
      @continent = Continent.find(params[:continent_id])
    end

    def find_city
      @city = City.find(params[:city_id])
    end

    def find_landscape
      @landscape = Landscape.find(params[:landscape_id])
    end

end
