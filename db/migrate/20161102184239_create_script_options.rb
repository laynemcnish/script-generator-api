class CreateScriptOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :script_options do |t|
      t.references :script, foreign_key: true
      t.text :additional_options
      t.references :scriptable_option, polymorphic: true, index: {name: 'index_script_options_on_scriptable_option_type'}

      t.timestamps
    end
  end
end
