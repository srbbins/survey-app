require 'rails_helper'

RSpec.describe Question, :type => :model do
  require 'rails_helper'

  describe Question do

    it 'should be accesible via survey' do
      survey = Survey.new
      survey.name = 'test'
      survey.save
      question = Question.new
      question.survey_id = survey.id
      question.text = 'what do you think'
      expect question.survey_id==survey.id
      puts question.text
      expect(question.text).to eq('what do you think')


    end
  end
end
