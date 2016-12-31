require 'test_helper'

class Missions::PlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mission = missions(:one)
  end

  test "should get index" do
    get mission_players_url(@mission)
    assert_response :success
  end
end
