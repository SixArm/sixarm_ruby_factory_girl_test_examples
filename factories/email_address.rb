# -*- coding: utf-8 -*-
#
# SixArm.com Factory Girl Examples
# http://sixarm.com
#
# Factory sequence to generate an email address.
# =>
#  user1@example.com
#  user2@example.com
#  user3@example.com

Factory.sequence :email_address do |n|
  "user#{n}@example.com"
end

