class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :tagable, polymorphic: true
      t.belongs_to :user

      t.timestamps
    end
  end
end
