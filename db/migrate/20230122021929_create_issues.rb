class CreateIssues < ActiveRecord::Migration[7.0]
  def change
    create_table :issues do |t|
      t.string :name
      t.string :priority
      t.string :status
      t.text :description
      t.datetime :due_date

      t.timestamps
    end
  end
end
