class CreateEnglishes < ActiveRecord::Migration[6.1]
  def change
    create_table :englishes do |t|
      t.text :translation
      t.text :enword
      t.references :word, null: false, foreign_key: true

      t.timestamps
    end
  end
end
