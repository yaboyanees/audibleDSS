class CreateTeamHasOs < ActiveRecord::Migration
  def change
    create_table :team_has_os do |t|
      t.integer :team_id
      t.integer :oPlay_id

      t.timestamps
    end
  end
end
