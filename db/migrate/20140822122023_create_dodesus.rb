class CreateDodesus < ActiveRecord::Migration
  def change
    create_table :dodesus do |t|
      t.string :name
      t.binary :image
      t.string :image_content_type

      t.timestamps
    end
  end
end
