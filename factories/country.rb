# -*- coding: utf-8 -*-
#
# SixArm.com Factory Girl Examples
# http://sixarm.com
#
# This Country example shows how we create random names:
# we want names that are random gibbrish (not real names)
# and we want names that have international characters.
#
# This example shows how we localize names by using suffixes:
#   - name_en for English
#   - name_fr for French
#   - name_gr for Greek

Factory.define :country do |c|
  c.name_en { Factory.name_en }
  c.name_fr { Factory.name_fr }
  c.name_gr { Factory.name_gr }
end
