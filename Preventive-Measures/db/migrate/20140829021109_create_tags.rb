class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :subject
      t.references :tagation

      t.timestamps
    end
  end
end
