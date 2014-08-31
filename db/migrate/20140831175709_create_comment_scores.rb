class CreateCommentScores < ActiveRecord::Migration
  def change
    create_table :comment_scores do |t|
      t.integer :score
      t.belongs_to :comment
      t.belongs_to :user
      t.timestamps
    end
  end
end
