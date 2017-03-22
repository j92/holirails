class CreateHolidays < ActiveRecord::Migration[5.0]
  def change
    create_table :holidays do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.text :comment

      t.timestamps
    end
  end
end
