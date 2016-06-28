class CreateFavoriteGames < ActiveRecord::Migration
  def change
    create_table :favorite_games do |t|
      t.string :Game
      t.integer :hours_played

      t.timestamps null: false
    end
  end
end
