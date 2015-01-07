class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    	t.string :question
    	t.string :category
    	t.string :first_option
    	t.string :second_option
    	t.string :third_option
    	t.integer :answer
    	t.text :explanation

      t.timestamps
    end
  end
end
