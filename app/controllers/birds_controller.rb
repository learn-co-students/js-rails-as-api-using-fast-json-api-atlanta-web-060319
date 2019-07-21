class BirdsController < ApplicationController
    def index
        birds = Bird.all 
        options = {
            include: {
                location: => {:latitude, :longitude}
            },
            sighting:
        }
        render json: BirdSerializer.new(birds)
    end 
end
