class CreatePlays < ActiveRecord::Migration[6.0]
  def change
    create_table :plays do |t|
      t.string :name
      t.string :setup
      t.belongs_to :playbook, null: false, foreign_key: true
      t.belongs_to :formation, null: false, foreign_key: true

      t.timestamps
    end
  end
end