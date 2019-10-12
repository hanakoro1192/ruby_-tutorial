require "date"

class Menu
  attr_accessor :name
  attr_accessor :price

  def initialize(name:, price:)
    self.name = name
    self.price = price
  end
  
  def info
    return "#{self.name} #{self.price}円"
  end
  
  def get_total_price(count)
    total_price = self.price * count
    if count >= 3
      total_price -= 100
    end
    
    # if文を作成してください
    if count >= 1 && Menu.is_discount_day?
      total_price -= 100
    end
    
    return total_price
  end
  
  def Menu.is_discount_day?
    today = Date.today
    return today.sunday?
  end
end
