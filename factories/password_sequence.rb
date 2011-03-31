# -*- coding: utf-8 -*-
#
# SixArm.com Factory Girl Examples
# http://sixarm.com

# Genereate a sequence of passwords.
# 
#   Factory(:password_sequence) => "password1"
#   Factory(:password_sequence) => "password2"
#   Factory(:password_sequence) => "password3"

Factory.sequence :password_sequence do |n|
  "password#{n}"
end

