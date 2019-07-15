class ApplicationController < ActionController::Base

    config.time_zone = "Bogota"
    before_action :authenticate_user!, except: [:index, :show]
    
end
