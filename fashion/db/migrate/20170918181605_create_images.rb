class CreateImages < ActiveRecord::Migration[5.0]
  
  def up
    create_table :images do |t|
      t.references :imageable, polymorphic: true
      t.timestamps
    end
  end

  def down
    create_table :images do |t|
      t.remove_references :imageable, polymorphic: true
      t.timestamps
    end
  end
end
