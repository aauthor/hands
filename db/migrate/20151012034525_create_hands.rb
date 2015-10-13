class CreateHands < ActiveRecord::Migration
  def change
    create_table :hands do |t|
      t.string :owner
      t.string :status

      t.timestamps null: false
    end
  end
end
