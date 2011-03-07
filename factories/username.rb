# -*- coding: utf-8 -*-
#
# Factory sequence to generate a username.
# =>
#  user1
#  user2
#  user3

Factory.sequence :username do |n|
  "user#{n}"
end
