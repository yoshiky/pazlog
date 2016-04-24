module Api
  class GachaHistoriesController < ApplicationController
    # before_action :set_dungeon, only: [:edit, :update, :destroy]
    skip_before_filter :verify_authenticity_token
  
    def create
      json_request = JSON.parse(request.body.read)
      p json_request

      head :ok
      #render json: 'ok'
    end
  
    private
  
     # def set_dungeon
     #   @dungeon_history = DungeonHistory.find(params[:id])
     # end
  
     # def dungeon_history_params
     #   params.require(:dungeon_history).permit(:started_on, :closed_on, :dungeon_id, :remarks)
     # end
  end
end
