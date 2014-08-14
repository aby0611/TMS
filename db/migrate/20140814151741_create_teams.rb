class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.timestamps
      t.string :name
      t.integer :manager_id
    end
  end
end
