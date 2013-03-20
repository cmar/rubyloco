class CreateMeetups < ActiveRecord::Migration
  def change
    create_table :meetups do |t|
      t.datetime :start_at
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
