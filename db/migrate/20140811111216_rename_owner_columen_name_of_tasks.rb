class RenameOwnerColumenNameOfTasks < ActiveRecord::Migration
  def self.up
    rename_column :tasks, :owener_id, :owner_id
  end

  def self.down
  end
end
