class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.references :meetup
      t.references :user
      t.boolean :attending
      t.string :comment

      t.timestamps
    end
    add_index :responses, :meetup_id
    add_index :responses, :user_id
  end
end
