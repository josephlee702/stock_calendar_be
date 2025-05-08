class CreateTrades < ActiveRecord::Migration[7.1]
  def change
    create_table :trades do |t|
      t.date :date
      t.decimal :amount

      t.timestamps
    end
  end
end
