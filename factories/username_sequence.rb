# -*- coding: utf-8 -*-
#
# SixArm.com Factory Girl Examples
# http://sixarm.com

# Generate a sequence of usernames.
#
#   Factory(:username_sequence) => "username1"
#   Factory(:username_sequence) => "username2"
#   Factory(:username_sequence) => "username3"

Factory.sequence :username_sequence do |n|
  "username#{n}"
end

