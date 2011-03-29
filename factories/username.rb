# -*- coding: utf-8 -*-
#
# SixArm.com Factory Girl Examples
# http://sixarm.com
#
# Factory sequence to generate a username.
# =>
#  user1
#  user2
#  user3

Factory.sequence :username do |n|
  "user#{n}"
end
