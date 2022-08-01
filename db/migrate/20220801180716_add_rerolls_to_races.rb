class AddRerollsToRaces < ActiveRecord::Migration[6.1]
  def change
    add_column :races, :rerolls, :integer
  end
end
