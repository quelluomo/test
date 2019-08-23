class CreateVideoRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :video_ratings do |t|
      t.integer :video_id
      t.integer :rating_id

      t.timestamps null: false
    end
  end
end
