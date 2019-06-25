class CreateStars < ActiveRecord::Migration[5.1]
  def change
    create_table :stars do |t|
      t.integer :topic_id
      t.integer :star

      t.timestamps
    end
  end
end
