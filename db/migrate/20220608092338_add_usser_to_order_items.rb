class AddUsserToOrderItems < ActiveRecord::Migration[7.0]
  def change
    add_column :order_items, :usser_id, :integer
  end
end
