class AddColumnsToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :title, :string
    add_column :events, :body, :string
    add_column :events, :date, :datetime
  end
end
