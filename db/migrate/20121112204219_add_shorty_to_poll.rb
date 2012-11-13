class AddShortyToPoll < ActiveRecord::Migration
  def change
    add_column :polls, :shorty, :string
  end
end
