class CreatePlaybooks < ActiveRecord::Migration[6.0]
  def change
    create_table :playbooks do |t|
      t.string :name

      t.timestamps
    end
  end
end
