class AddAdminToUsser < ActiveRecord::Migration[7.0]
  def change
    add_column :ussers, :admin, :boolean,default: false
  end
end