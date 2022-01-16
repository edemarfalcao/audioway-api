class V1::StudiosController < ApplicationController
    def index
        @studios = Studio.all
        render json: @studios, status: 200
    end
end
