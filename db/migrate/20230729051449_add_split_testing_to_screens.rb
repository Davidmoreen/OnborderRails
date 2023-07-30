class AddSplitTestingToScreens < ActiveRecord::Migration[7.0]
  def change
    add_column :screens, :visits, :integer, :null => false, :default => 0
    add_column :screens, :conversions, :integer, :null => false, :default => 0
  end
end
