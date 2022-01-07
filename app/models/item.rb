class Item < ApplicationRecord
    validates :name, presence: true
    validates :description, length: {minimum: 10}, presence: true
    validates :stock_available, comparison: { greater_than_or_equal_to: 0 }, presence: true
    validates :unit_price, comparison: { greater_than: 0 }, presence: true
    validates :stock_sold,  comparison: { greater_than_or_equal_to: 0 }, presence: true
    validates :sell_price, comparison: { greater_than: 0 }, presence: true
end
