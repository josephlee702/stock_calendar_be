class Trade < ApplicationRecord
  belongs_to :user

  TRADE_TYPES = %w[Buy Sell]
  OPTION_TYPES = %w[Call Put]

  validates :trade_type, inclusion: { in: TRADE_TYPES }
  validates :option_type, inclusion: { in: OPTION_TYPES }, allow_nil: true

  validates :symbol, :date, :amount, :option_type, :notes, :was_disciplined, :trade_type, presence: true
end
