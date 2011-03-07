# -*- coding: utf-8 -*-
#
# Factory sequence to generate a password.
# =>
#  password1
#  password2
#  password3

Factory.sequence :password do |n|
  "password#{n}"
end


