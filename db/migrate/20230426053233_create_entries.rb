class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.string :entryable_type
      t.references :entryable

      t.timestamps
    end
  end
end