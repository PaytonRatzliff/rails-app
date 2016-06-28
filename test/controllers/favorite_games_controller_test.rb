require 'test_helper'

class FavoriteGamesControllerTest < ActionController::TestCase
  setup do
    @favorite_game = favorite_games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:favorite_games)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create favorite_game" do
    assert_difference('FavoriteGame.count') do
      post :create, favorite_game: { Game: @favorite_game.Game, hours_played: @favorite_game.hours_played }
    end

    assert_redirected_to favorite_game_path(assigns(:favorite_game))
  end

  test "should show favorite_game" do
    get :show, id: @favorite_game
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @favorite_game
    assert_response :success
  end

  test "should update favorite_game" do
    patch :update, id: @favorite_game, favorite_game: { Game: @favorite_game.Game, hours_played: @favorite_game.hours_played }
    assert_redirected_to favorite_game_path(assigns(:favorite_game))
  end

  test "should destroy favorite_game" do
    assert_difference('FavoriteGame.count', -1) do
      delete :destroy, id: @favorite_game
    end

    assert_redirected_to favorite_games_path
  end
end
