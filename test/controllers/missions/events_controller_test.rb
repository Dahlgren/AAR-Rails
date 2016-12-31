require 'test_helper'

class Missions::EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:player_connected)
    @mission = missions(:one)
  end

  test "should get index" do
    get mission_events_url(@mission)
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post mission_events_url(@mission), params: {
        event: { player: {name: "Player"}, type: "PlayerConnected" }
      }.to_json, headers: {CONTENT_TYPE: 'application/json'}
    end

    assert_response 201
  end

  test "should create events" do
    assert_difference('Event.count', 2) do
      post mission_events_url(@mission), params: {
        events: [
          { player: {name: "Player"}, type: "PlayerConnected" },
          { player: {name: "Player"}, type: "PlayerDisconnected" },
        ]
      }.to_json, headers: {CONTENT_TYPE: 'application/json'}
    end

    assert_response 201
  end

  test "should show event" do
    get mission_event_url(@mission, @event)
    assert_response :success
  end

  test "should update event" do
    patch mission_event_url(@mission, @event), params: {
      event: { player: {name: "Player 2", uid: 2} }
    }.to_json, headers: {CONTENT_TYPE: 'application/json'}
    assert_response 200
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete mission_event_url(@mission, @event)
    end

    assert_response 204
  end
end
