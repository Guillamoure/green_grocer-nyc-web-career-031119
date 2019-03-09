require 'pry'
def consolidate_cart(cart)
  # code here
  consolidated = {}
  n = 0
  cart.each do |food, info|
    if consolidated.keys.include?(food)
      
    else
      consolidated[food] = info
      binidng.pry
      
    end
  end
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
