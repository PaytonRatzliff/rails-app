require 'test_helper'

class FavoriteGameTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "one has name" do
    FavoriteGame.all.each do |game|
      assert_not_nil(game.Game, "A game has no name!")
    end
  end
end
