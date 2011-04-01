# -*- coding: utf-8 -*-
#
# SixArm.com Factory Girl Examples
# http://sixarm.com

# Genereate a sequence of fake UUIDs.
# 
#   Factory(:uuid_sequence) => "uuid1"
#   Factory(:uuid_sequence) => "uuid2"
#   Factory(:uuid_sequence) => "uuid3"

Factory.sequence :uuid_sequence do |n|
  "uuid#{n}"
end

