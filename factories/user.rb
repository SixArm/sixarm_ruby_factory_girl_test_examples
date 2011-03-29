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

Factory.define :user do |user_factory|
  user_factory.username { Factory.next :username }
  user_factory.email_address { Factory.next :email_address }
  user_factory.email_confirmation {|_user| u_user.email }
  user_factory.password { Factory.next :password }
  user_factory.password_confirmation {|_user| _user.password }
  user_factory.access_roles []
end
