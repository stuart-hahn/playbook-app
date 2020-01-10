class CreateFormations < ActiveRecord::Migration[6.0]
  def change
    create_table :formations do |t|
      t.string :name
      t.belongs_to :playbook, null: false, foreign_key: true

      t.timestamps
    end
  end
end
