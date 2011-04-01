# -*- coding: utf-8 -*-
#
# SixArm.com Factory Girl Examples
# http://sixarm.com

# Generate an email address.
#
#   email_address => "random@example.com"
#
# Result is 3-9 letters + 3-9 numbers + @example.com

def email_address
  ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'].sample(rand(6)+3) +
  ['0','1','2','3','4','5','6','7','8','9','0'].sample(rand(6)+3) +
  "@example.com"
end

