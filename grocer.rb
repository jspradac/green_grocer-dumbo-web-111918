def consolidate_cart(cart)
  hash = {}
  cart.each do |product|
    product.each do |name, details|
      if !((hash.keys).include?(name))
        details[:count] = cart.count(product)
        hash[name] = details
      end 
    end 
  end 
  hash
end

def apply_coupons(cart, coupons)
  hash = cart 
  coupons.each do |coupon|
    coupon.each do |key, value|
      if (cart.keys).include?(value)
        hash[value + "W/COUPON"] = {price: coupon[:cost], clearance: true, count: (coupon[:num])/(cart[value][:count])}
        hash[value] = {
      
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
