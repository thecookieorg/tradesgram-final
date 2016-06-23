class AddEmploymentToUsers < ActiveRecord::Migration
  def change
    add_column :users, :employment, :string
  end
end
