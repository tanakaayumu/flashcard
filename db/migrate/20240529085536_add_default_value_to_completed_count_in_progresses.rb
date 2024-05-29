class AddDefaultValueToCompletedCountInProgresses < ActiveRecord::Migration[7.1]
  def change
    change_column_default :progresses, :completed_count, 0
  end
end