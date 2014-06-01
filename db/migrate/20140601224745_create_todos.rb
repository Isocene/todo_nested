class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :description
      t.references :list, index: true

      t.timestamps
    end
  end
end
