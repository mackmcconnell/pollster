class AddAToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :a, :string
  end
end
