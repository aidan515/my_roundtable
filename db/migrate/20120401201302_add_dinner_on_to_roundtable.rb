class AddDinnerOnToRoundtable < ActiveRecord::Migration
  def change
    add_column :roundtables, :dinner_on, :date

  end
end
