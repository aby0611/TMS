class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.timestamps
      t.datetime :start_date
      t.datetime :end_date
      t.string :title
      t.integer :submitter_id
      t.integer :owener_id
      t.integer :priority
      t.integer :importance
      t.integer :progress
      t.text :requirement
      t.text :plan
    end
  end
end
