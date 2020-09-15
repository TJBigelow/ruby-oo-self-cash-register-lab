require 'pry'
class CashRegister
    attr_accessor :discount, :total, :items, :prices
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
        if prices.length === 0
            @total = 0
        end
    end

    def apply_discount
        if @discount === nil
            return "There is no discount to apply."
        end
        @total = @total * (1 - @discount * 0.01)
        "After the discount, the total comes to $#{@total.to_int}."
    end

end
