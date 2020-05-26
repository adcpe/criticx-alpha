class CreateJoinTableGameGenre < ActiveRecord::Migration[6.0]
  def change
    create_join_table :games, :genres do |t|
      t.references :game, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true
    end
  end
end
