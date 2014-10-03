require_relative '../config'

class CreateTables < ActiveRecord::Migration

  def change
    create_table :users do |t|
      t.string :name
      t.integer :score

      t.timestamps
    end

    create_table :pictures do |t|
      t.string :name

      t.timestamps
    end

    create_table :parts do |t|
      t.string :ascii
      t.references :picture

      t.timestamps
    end
  end

end
