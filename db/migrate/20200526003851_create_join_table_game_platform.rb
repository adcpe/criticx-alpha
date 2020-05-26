class CreateJoinTableGamePlatform < ActiveRecord::Migration[6.0]
  def change
    create_join_table :games, :platforms do |t|
      t.references :game, null: false, foreign_key: true
      t.references :platform, null: false, foreign_key: true
    end
  end
end
