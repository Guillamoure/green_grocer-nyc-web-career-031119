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
  new_cart = cart
  coupons.each do |sale|
    if new_cart.keys.include?sale[:item]
      while new_cart[sale[:item]][:count] >= sale[:num] && new_cart[sale[:item]][:clearance] == true
        x = new_cart[sale[:item]][:count] - sale[:num]
        new_cart[sale[:item]][:count] = new_cart[sale[:item]][:count] - sale[:num]
        
        with_coupon = sale[:item] + " W/COUPON"
        new_cart[with_coupon] = {}
        new_cart[with_coupon][:price] = sale[:cost]
        new_cart[with_coupon][:clearance] = true
        if new_cart[with_coupon][:count]
          new_cart[with_coupon][:count]+=1
        else
          new_cart[with_coupon][:count] = 1
        end
        binding.pry
      end
    end
  end
  return new_cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
