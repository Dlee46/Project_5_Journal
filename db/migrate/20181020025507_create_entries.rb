class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.string :journal_entry
      t.string :photo
      t.references :journal, foreign_key: true

      t.timestamps
    end
  end
end
