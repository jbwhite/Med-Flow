class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.text :body

      t.belongs_to :user

      t.timestamps
    end
  end
end
