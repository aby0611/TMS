class RenameToTeamId < ActiveRecord::Migration
    def self.up
    rename_column :users, :department_id, :team_id
  end

  def self.down
  end
end
