# frozen_string_literal: true

module V1
  class StudiosController < ApplicationController
    def index
      @studios = Studio.all
      render json: @studios, status: 200
    end

    def create
      @studio = Studio.new(studio_params)
      if @studio.save
        render json: @studio, status: 200
      else
        render json: { errors: @studio.errors }, status: 422
      end
    end

    def destroy
      @studio = Studio.find(params[:id])
      if @studio.destroy
        render json: { message: 'Studio deleted' }, status: 200
      else
        render json: { errors: @studio.errors }, status: 422
      end
    end

    private

    def studio_params
      params.require(:studio).permit(:studio_owner, :studio_name, :address, :city, :state, :zip, :phone, :email,
                                     :website)
    end
  end
end
