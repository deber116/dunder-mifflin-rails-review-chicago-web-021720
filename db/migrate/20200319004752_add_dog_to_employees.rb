class AddDogToEmployees < ActiveRecord::Migration[5.1]
  # a slightly better, more descriptive name for this file / class would be 
  # add_dog_id_to_employees / AddDogIdToEmployees
  def change
    add_column :employees, :dog_id, :integer
  end
end
