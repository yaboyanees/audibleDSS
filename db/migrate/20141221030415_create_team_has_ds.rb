class CreateTeamHasDs < ActiveRecord::Migration
  def change
    create_table :team_has_ds do |t|
      t.integer :team_id
      t.integer :dPlay_id

      t.timestamps
    end
  end
end
