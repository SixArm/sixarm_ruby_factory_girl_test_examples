# -*- coding: utf-8 -*-
#
# SixArm.com Factory Girl Examples
# http://sixarm.com

# Generate a sequence of email addresses.
#
#   Factory(:email_address_sequence) => "user1@example.com"
#   Factory(:email_address_sequence) => "user2@example.com"
#   Factory(:email_address_sequence) => "user3@example.com"

Factory.sequence :email_address_sequence do |n|
  "user#{n}@example.com"
end

