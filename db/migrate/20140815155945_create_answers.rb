class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :answer_text
      t.string :answer_type

      t.timestamps
    end
    add_belongs_to :answers, :question, index:true
  end
end
