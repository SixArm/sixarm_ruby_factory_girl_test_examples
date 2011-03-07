# -*- coding: utf-8 -*-
#
# Factory sequence to generate an email address.
# =>
#  user1@example.com
#  user2@example.com
#  user3@example.com

Factory.sequence :email_address do |n|
  "user#{n}@example.com"
end

