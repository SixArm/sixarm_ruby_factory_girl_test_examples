# -*- coding: utf-8 -*-
#
# SixArm.com Factory Girl Examples
# http://sixarm.com
#
# Generate a random host name on the domain example.com,
# for example "cgknhf.example.com"

def host_name
  ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'].sample(rand(6)+3).join +
  ".example.com"
end
