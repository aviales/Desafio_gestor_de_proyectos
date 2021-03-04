class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :start
      t.string :end
      t.string :state

      t.timestamps
    end
  end
end
