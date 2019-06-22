class AddTagPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :tag_posts do |t|
      t.references :post, foreign_key: true
      t.references :tag, foreign_key: true
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
