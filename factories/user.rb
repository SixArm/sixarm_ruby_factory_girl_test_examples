# -*- coding: utf-8 -*-
#
# SixArm.com Factory Girl Examples
# http://sixarm.com
#
# User example has these fields:
#   - username
#   - email_address
#   - email_address_confirmation
#   - password
#   - password_confirmation
#   - roles (an array of access roles)
#
# This example shows a useful technique:
# we set the email_address attribute first, 
# then set the email_access_confirmation attribute
# by using a block so we can access the email_address.

Factory.define :user do |user|
  user.username { Factory.next :username }
  user.email_address { Factory.next :email_address }
  user.email_confirmation {|_user| _user.email }
  user.password { Factory.next :password }
  user.password_confirmation {|_user| _user.password }
  user.access_roles []
end
