class CreateScripts < ActiveRecord::Migration[5.0]
  def change
    create_table :scripts do |t|
      t.string :uuid
      t.string :name
      t.text :notes
      t.text :greeting

      t.timestamps
    end
  end
end
