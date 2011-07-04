# -*- coding: utf-8 -*-
#
# SixArm.com Factory Girl Examples
# http://sixarm.com
#
# Generate a random date,
# within 1000 days of today.

require 'date'
def date
  Date.today + rand(2000) - 1000
end
