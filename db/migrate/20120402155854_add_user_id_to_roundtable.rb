class AddUserIdToRoundtable < ActiveRecord::Migration
  def change
    add_column :roundtables, :user_id, :integer

  end
end
