# -*- coding: utf-8 -*-
#
# SixArm.com Factory Girl Examples
# http://sixarm.com
#
# Factory sequence to generate a password.
# =>
#  password1
#  password2
#  password3

Factory.sequence :password do |n|
  "password#{n}"
end


