class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
    	t.string :content
    	t.integer :rating
    	t.belongs_to :user
    	t.belongs_to :question, index: true
    	t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
