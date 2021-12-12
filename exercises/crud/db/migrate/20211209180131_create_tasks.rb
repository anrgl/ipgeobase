# frozen_string_literal: true

class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name, default: '', null: false
      t.text :description
      t.string :status, default: 'new', null: false
      t.string :creator, default: '', null: false
      t.string :performer
      t.boolean :completed, default: false, null: false

      t.timestamps
    end
  end
end
