# frozen_string_literal: true

require 'test_helper'

module V1
  class StudiosControllerTest < ActionDispatch::IntegrationTest
    def index
      @studios = Studio.all

      render json: @contacts, status: 200
    end
  end
end
