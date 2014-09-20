class CreateDames < ActiveRecord::Migration
  def change
    create_table :dames do |t|
      t.binary :image
      t.string :image_content_type

      t.timestamps
    end
  end
end
