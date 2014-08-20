class AddProgressToComments < ActiveRecord::Migration
  def change
    add_column :comments, :progress, :integer
  end
end
