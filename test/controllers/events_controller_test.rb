require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
    @mission = missions(:one)
  end

  test "should get index" do
    get mission_events_url(@mission)
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post mission_events_url(@mission), params: {
        event: { data: @event.data, type: @event.type }
      }
    end

    assert_response 201
  end

  test "should create events" do
    assert_difference('Event.count', 2) do
      post mission_events_url(@mission), params: {
        events: [
          { data: @event.data, type: @event.type },
          { data: @event.data, type: @event.type },
        ]
      }
    end

    assert_response 201
  end

  test "should show event" do
    get mission_event_url(@mission, @event)
    assert_response :success
  end

  test "should update event" do
    patch mission_event_url(@mission, @event), params: {
      event: { data: @event.data, type: @event.type }
    }
    assert_response 200
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete mission_event_url(@mission, @event)
    end

    assert_response 204
  end
end
