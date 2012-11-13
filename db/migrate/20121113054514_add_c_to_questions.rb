class AddCToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :c, :string
  end
end
