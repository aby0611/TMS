class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.timestamp
      t.integer :task_id
      t.integer :user_id
      t.string :content
    end
  end
end
