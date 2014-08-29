class CreateTagations < ActiveRecord::Migration
  def change
    create_table :tagations do |t|
      t.references :tagable, polymorphic: true
      t.references :user
      t.references :tag

      t.timestamps
    end
  end
end
