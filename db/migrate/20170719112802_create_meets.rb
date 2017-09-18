class CreateMeets < ActiveRecord::Migration[5.0]
  def change
    create_table :meets do |t|
      t.string :name
      t.date :meeting
      t.text :subject
      t.boolean :status

      t.timestamps
    end
  end
end
