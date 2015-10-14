class DungeonHistoriesController < ApplicationController
  before_action :set_dungeon, only: [:edit, :update, :destroy]
  before_action :get_all_dungeons, only: %w(new edit)

  def index
    @dungeon_histories = DungeonHistory.order(:started_on, :id)
  end

  def new
    @dungeon_history = DungeonHistory.new
  end

  def edit
  end

  def create
    @dungeon_history = DungeonHistory.new(dungeon_history_params)

    if @dungeon_history.save
      redirect_to dungeon_histories_url, notice: 'DungeonHistory was successfully created.'
    else
      render :new
    end
  end

  def update
    if @dungeon_history.update(dungeon_history_params)
      redirect_to dungeon_histories_url, notice: 'DungeonHistory was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @dungeon_history.destroy
    redirect_to dungeon_histories_url, notice: 'DungeonHistory was successfully destroyed.'
  end

  private

    def get_all_dungeons
      @dungeons = Dungeon.order(:id)
    end

    def set_dungeon
      @dungeon_history = DungeonHistory.find(params[:id])
    end

    def dungeon_history_params
      params.require(:dungeon_history).permit(:started_on, :closed_on, :dungeon_id, :remarks)
    end
end
