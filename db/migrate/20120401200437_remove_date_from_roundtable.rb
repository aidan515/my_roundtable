class RemoveDateFromRoundtable < ActiveRecord::Migration
  def up
    remove_column :roundtables, :date
      end

  def down
    add_column :roundtables, :date, :date
  end
end
