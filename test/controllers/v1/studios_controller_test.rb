require "test_helper"

class V1::StudiosControllerTest < ActionDispatch::IntegrationTest

  def index 
    @studios = Studio.all

    render json: @contacts, status: 200
  end  

end
