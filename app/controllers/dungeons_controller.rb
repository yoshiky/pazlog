class DungeonsController < ApplicationController
  before_action :set_dungeon, only: [:edit, :update, :destroy]

  def index
    @dungeons = Dungeon.order(:id)
  end

  def new
    @dungeon = Dungeon.new
    @dungeon_kinds = DungeonKind.all
    @descent_monsters = Monster.for_descent
  end

  def edit
    @dungeon_kinds = DungeonKind.all
    @descent_monsters = Monster.for_descent
  end

  def create
    @dungeon = Dungeon.new(dungeon_params)
    @dungeon_kinds = DungeonKind.all

    if @dungeon.save
      redirect_to dungeons_url, notice: 'Dungeon was successfully created.'
    else
      render :new
    end
  end

  def update
    if @dungeon.update(dungeon_params)
      redirect_to dungeons_url, notice: 'Dungeon was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @dungeon.destroy
    redirect_to dungeons_url, notice: 'Dungeon was successfully destroyed.'
  end

  private

    def set_dungeon
      @dungeon = Dungeon.find(params[:id])
    end

    def dungeon_params
      params.require(:dungeon).permit(:name, :dungeon_kind_id, :boss_monster_1_id, :boss_monster_2_id)
    end
end
