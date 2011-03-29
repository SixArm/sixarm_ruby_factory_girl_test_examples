# -*- coding: utf-8 -*-
#
# SixArm.com Factory Girl Examples
# http://sixarm.com
#
# Factory to generate a sequential nickname.

Factory.sequence :nickname do |n|
  "nickname#{n}"
end
