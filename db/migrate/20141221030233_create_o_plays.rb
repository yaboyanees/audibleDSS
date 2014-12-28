class CreateOPlays < ActiveRecord::Migration
  def change
    create_table :o_plays do |t|
      t.string :name
      t.string :picture
      t.string :formation
      t.string :play_type

      t.timestamps
    end
  end
end
