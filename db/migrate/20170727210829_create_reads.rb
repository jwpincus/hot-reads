class CreateReads < ActiveRecord::Migration[5.1]
  def change
    create_table :reads do |t|
      t.references :link, foreign_key: true

      t.timestamps
    end
  end
end
