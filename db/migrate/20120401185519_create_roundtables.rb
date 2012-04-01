class CreateRoundtables < ActiveRecord::Migration
  def change
    create_table :roundtables do |t|
      t.string :topic
      t.integer :number_of_attendees
      t.date :date
      t.time :kick_off

      t.timestamps
    end
  end
end
