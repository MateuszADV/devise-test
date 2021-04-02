class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :status
      t.string :img_type
      t.string :making

      t.timestamps
    end
  end
end
