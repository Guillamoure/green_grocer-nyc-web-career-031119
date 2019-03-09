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
      if cart[sale[:item]][:count] >= sale[:num] && cart[sale[:item]][:clearance] == true
        cart[sale[:item]][:count] = cart[sale[:item]][:count] - sale[:num]
        with_coupon = cart[sale[:item]] + " W/COUPON"
        cart[with_coupon] = {}
        cart[with_coupon][:price] = sale[:cost]
        cart[with_coupon][:clearance] = "true"
        cart[with_coupon][:count] = 1
        binding.pry
      end
    end
  end
  return cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
