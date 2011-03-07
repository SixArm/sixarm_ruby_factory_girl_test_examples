# -*- coding: utf-8 -*-
#
# Factory to generate a name using English-oriented characters.

Factory.define :name_en do
  ['a','a','b','c','d','e','e','f','g','h','i','i','j','k','l','m','n','o','o','p','q','r','s','t','u','u','v','w','x','y','z'].sample(rand(10)+20)
end


