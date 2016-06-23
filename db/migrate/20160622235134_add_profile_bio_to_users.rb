class AddProfileBioToUsers < ActiveRecord::Migration
  def change
    add_column :users, :profile_bio, :string
  end
end
