class CreateFinals < ActiveRecord::Migration[7.0]
  def change
    create_table :finals do |t|

      t.timestamps
    end
  end
end
