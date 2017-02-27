class CreateGenerators < ActiveRecord::Migration[5.0]
  def change
    create_table :generators do |t|
      t.string :list
      t.boolean :isPrime

      t.timestamps
    end
  end
end
