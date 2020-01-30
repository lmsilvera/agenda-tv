class CreateShowTimes < ActiveRecord::Migration[5.0]
  def change
    create_table :show_times do |t|
      t.timestamp :timing
      t.integer :channel_id
      t.integer :show_id

      t.timestamps
    end
  end
end
