class Item < ApplicationRecord
    validates :name, presence: true
    validates :description, length: {minimum: 10}, presence: true
    validates :stock_avail, comparison: { greater_than_or_equal_to: 0 }, presence: true
    validates :unit_price, comparison: { greater_than: 0 }, presence: true # stored as an int
    validates :stock_sold,  comparison: { greater_than_or_equal_to: 0 }, presence: true
    validates :sell_price, comparison: { greater_than: 0 }, presence: true # stored as an int

    def unit_price
        self[:unit_price].to_f / 100
    end

    def sell_price
        self[:sell_price].to_f / 100
    end

    def stock_value
        (self[:unit_price] * stock_avail).to_f / 100
    end

    def sold_value
        (self[:sell_price] * stock_sold).to_f / 100
    end
end
