class AddBToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :b, :string
  end
end
