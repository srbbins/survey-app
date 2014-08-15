require 'rails_helper'

RSpec.describe Answer, :type => :model do
  it 'should be accesible via question' do
    question = Question.new
    question.text = 'what do you think'
    answer = Answer.new
    answer.answer_text = 'this is what I think'
    answer.question_id = question.id
    answer.save
    puts Answer.find_by_question_id(question.id).answer_text
    expect(Answer.find_by_question_id(question.id).answer_text).to eq('this is what I think')
  end
end
