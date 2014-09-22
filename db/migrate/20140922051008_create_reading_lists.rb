class CreateReadingLists < ActiveRecord::Migration
  def change
    create_table :reading_lists do |t|
      t.text :books

      t.timestamps
    end
  end
end
