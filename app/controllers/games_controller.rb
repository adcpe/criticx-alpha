class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update]

  def index
    @games = Game.all
  end

  def show
    @game
  end

  def new
    @game = Game.new
  end

  def edit
    @game
  end

  def update
    @game
    if @game.update(game_params)
      redirect_to(@game)
    else
      render :edit
    end
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  def edit
    @game
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:name,:summary,:release_date, :category, :rating, :parent_id)
  end
end
