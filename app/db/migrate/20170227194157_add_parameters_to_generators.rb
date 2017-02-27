class AddParametersToGenerators < ActiveRecord::Migration[5.0]
  def change
    add_column :generators, :start_param, :integer
    add_column :generators, :end_param, :integer
  end
end
