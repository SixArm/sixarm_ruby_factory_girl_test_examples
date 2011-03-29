# -*- coding: utf-8 -*-
#
# SixArm.com Factory Girl Examples
# http://sixarm.com
#
# Factory to generate a name using French-oriented characters.

Factory.define :name_fr do
  ['à','á','b','ç','d','è','é','f','g','h','ì','í','j','k','l','m','n','ò','ó','p','q','r','s','t','ù','ú','v','w','x','ý','z'].sample(rand(10)+20)
end


