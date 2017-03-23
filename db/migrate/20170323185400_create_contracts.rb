class CreateContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :contracts do |t|
      t.string :company
      t.datetime :start_date
      t.datetime :end_date
      t.decimal :holiday_amount

      t.timestamps
    end
  end
end
