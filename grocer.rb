require 'pry'
def consolidate_cart(cart)
  # code here
  consolidated = {}
  
  cart.each do |item|
    item.each do |food, info|
      if consolidated.keys.include?(food)
        consolidated[food][:count]+=1
      else
        consolidated[food] = info
        consolidated[food][:count] = 1
        
      
      end
    end
  end
  return consolidated
end

def apply_coupons(cart, coupons)
  # code here
  
  coupons.each do |sale|
    if cart.keys.include?sale[:item]
      binding.pry
    end
  end
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
