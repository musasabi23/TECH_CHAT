class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :name, null: false
      t.string :title, null: false
      t.text :question, null: false

      t.timestamps
    end
  end
end
