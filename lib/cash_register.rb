require 'pry'
class CashRegister
    attr_accessor :total
    attr_reader :discount, :items
    def initialize (discount=nil)
        @total = 0
        @discount = discount
        @items = []
        @prices = []
    end

    def add_item (title, price, quantity=1)
        quantity.times {@items << title; @prices << price}
        @quantity = quantity
        @total = @prices.sum
    end

    def void_last_transaction
        @items.pop(@quantity)
        @prices.pop(@quantity)
        @total = @prices.sum
        @total = 0 if @prices.length === 0
    end

    def apply_discount
        return "There is no discount to apply." if @discount === nil
        @total = @total * (1 - @discount * 0.01)
        "After the discount, the total comes to $#{@total.to_int}."
    end
end
