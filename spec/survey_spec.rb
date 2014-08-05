require 'rails_helper'
RSpec.describe Survey do
  it "provides persistence and a name for a single survey" do
    survey = Survey.new
    survey.name = 'john'
    expect(survey.name).to eq('john')


  end
end