class AddRelationToQuestion < ActiveRecord::Migration
  def change
    add_belongs_to :questions, :survey, index:true

  end
end
