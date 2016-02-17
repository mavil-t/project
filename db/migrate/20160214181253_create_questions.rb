class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    	t.string :ques_title
    	t.string :ques
    	t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
