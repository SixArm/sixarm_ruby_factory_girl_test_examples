# -*- coding: utf-8 -*-
#
# SixArm.com Factory Girl Examples
# http://sixarm.com

# Generate a sequence of nicknames.
#
#   Factory(:nickname_sequence) => "nickname1"
#   Factory(:nickname_sequence) => "nickname2"
#   Factory(:nickname_sequence) => "nickname3"

Factory.sequence :nickname_sequence do |n|
  "nickname#{n}"
end
