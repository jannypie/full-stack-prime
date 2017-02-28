class CreateInterfaces < ActiveRecord::Migration[5.0]
  def change
    create_table :interfaces do |t|

      t.timestamps
    end
  end
end
