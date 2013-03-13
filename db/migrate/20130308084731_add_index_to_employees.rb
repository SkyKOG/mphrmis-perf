class AddIndexToEmployees < ActiveRecord::Migration
  def change
	add_index :employees, [:qualification_name_id, :Qualification_name]
  end
end
