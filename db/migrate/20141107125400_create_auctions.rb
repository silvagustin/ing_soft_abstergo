class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|  
      t.string :name
      t.text :description
      t.boolean :active, default: true
      t.string :image_uid
      t.string :image_name  # Optional - if you want urls to end with the original filename
      
      t.timestamps
    end
  end
end
