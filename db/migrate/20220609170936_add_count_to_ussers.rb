class AddCountToUssers < ActiveRecord::Migration[7.0]
  def change
    add_column :ussers, :count, :integer
  end
end
