class AddDefaultValueToCompletedInTasks < ActiveRecord::Migration[8.0]
  def change
    change_column_default :tasks, :completed, from: nil, to: false
  end
end
