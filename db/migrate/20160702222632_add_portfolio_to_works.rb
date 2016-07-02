class AddPortfolioToWorks < ActiveRecord::Migration
  def change
    add_column :works, :portfolio, :string
  end
end
