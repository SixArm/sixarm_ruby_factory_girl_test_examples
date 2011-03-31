# -*- coding: utf-8 -*-
#
# SixArm.com Factory Girl Examples
# http://sixarm.com

# Generate a random username.
#
#   username => "hgasdklasnbaf"

def username
  ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'].sample(rand(10)+20)
end
