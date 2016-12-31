class PlayersController < ApplicationController

  # GET /players
  def index
    @players = Event.select("data #>> '{player, name}' as name, data #>> '{player, uid}' as uid")
    .where("data #>> '{player, uid}' != 'null'")
    .group("uid, name")

    render json: @players
  end
end
