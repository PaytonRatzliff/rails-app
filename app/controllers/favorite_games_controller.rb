class FavoriteGamesController < ApplicationController
  before_action :set_favorite_game, only: [:show, :edit, :update, :destroy]

  # GET /favorite_games
  # GET /favorite_games.json
  def index
    @favorite_games = FavoriteGame.all
  end

  # GET /favorite_games/1
  # GET /favorite_games/1.json
  def show
  end

  # GET /favorite_games/new
  def new
    @favorite_game = FavoriteGame.new
  end

  # GET /favorite_games/1/edit
  def edit
  end

  # POST /favorite_games
  # POST /favorite_games.json
  def create
    @favorite_game = FavoriteGame.new(favorite_game_params)

    respond_to do |format|
      if @favorite_game.save
        format.html { redirect_to @favorite_game, notice: 'Favorite game was successfully created.' }
        format.json { render :show, status: :created, location: @favorite_game }
      else
        format.html { render :new }
        format.json { render json: @favorite_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favorite_games/1
  # PATCH/PUT /favorite_games/1.json
  def update
    respond_to do |format|
      if @favorite_game.update(favorite_game_params)
        format.html { redirect_to @favorite_game, notice: 'Favorite game was successfully updated.' }
        format.json { render :show, status: :ok, location: @favorite_game }
      else
        format.html { render :edit }
        format.json { render json: @favorite_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorite_games/1
  # DELETE /favorite_games/1.json
  def destroy
    @favorite_game.destroy
    respond_to do |format|
      format.html { redirect_to favorite_games_url, notice: 'Favorite game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_game
      @favorite_game = FavoriteGame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favorite_game_params
      params.require(:favorite_game).permit(:Game, :hours_played)
    end
end
