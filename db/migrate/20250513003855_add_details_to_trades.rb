class AddDetailsToTrades < ActiveRecord::Migration[7.1]
  def change
    add_column :trades, :symbol, :string
    add_column :trades, :trade_type, :string
    add_column :trades, :option_type, :string
    add_column :trades, :notes, :text
    add_column :trades, :was_disciplined, :boolean
  end
end
