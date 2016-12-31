class Missions::PlayersController < ApplicationController
  before_action :set_mission

  # GET /missions/:mission_id/players
  def index
    @players = @mission.events.select("data #>> '{player, name}' as name, data #>> '{player, uid}' as uid")
    .where("data #>> '{player, uid}' != 'null'")
    .group("uid, name")

    render json: @players
  end

  private
    def set_mission
      @mission = Mission.find(params[:mission_id])
    end
end
