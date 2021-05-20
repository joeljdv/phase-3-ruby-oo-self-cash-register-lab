require "pry"

class CashRegister

    attr_accessor :total, :discount

    

    def initialize( discount = nil)
        @total =0
        @discount = discount
        @items = []
        @items_price = []
    end

    def total
        @total
    end

    def add_item(title, price, quantity = 1) 
        sum = price * quantity
        @total += sum
       quantity.times do 
        @items << title
        @items_price << sum
       end
    end

    def apply_discount
       if @discount
        @total = @total - @total * @discount / 100
        "After the discount, the total comes to $#{@total}."
       else 
        "There is no discount to apply."
       end
    end

    def items
       @items
    end

    def void_last_transaction
      @total = @total - @items_price[-1]
    end

    binding.pry
end

