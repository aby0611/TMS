class CreatesUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login_id
      t.string :english_name
      t.string :chinese_name
      t.string :email
      t.integer :department_id
      t.integer :employee_id
      t.timestamps
    end
  end
end
