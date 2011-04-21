# -*- coding: utf-8 -*-
#
# SixArm.com Factory Girl Examples
# http://sixarm.com

Factory.define :pop_account do |pop_account|
  pop_account.uuid { uuid }
  pop_account.username { username }
  pop_account.password { password }
  pop_account.email_address { email_address }
  pop_account.inbound_mail_host { host_name }
  pop_account.inbound_mail_port { host_port }
  pop_account.inbound_mail_port_for_ssl { host_post }
  pop_account.inbound_mail_use_ssl { boolean }
  pop_account.outbound_mail_host { host_name }
  pop_account.outbound_mail_use_authentication { boolean }
  pop_account.outbound_mail_port_for_ssl { host_port }
  pop_account.outbound_mail_port_for_tls { host_port }
end
