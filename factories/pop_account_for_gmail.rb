# -*- coding: utf-8 -*-
#
# SixArm.com Factory Girl Examples
# http://sixarm.com

FactoryGirl.define do

  factory :pop_account_for_gmail, :class => PopAccount do |pop_account|
    pop_account.uuid { uuid }
    pop_account.username { username }
    pop_account.password { password }
    pop_account.email_address { email_address }
    pop_account.inbound_mail_host "pop.gmail.com"
    pop_account.inbound_mail_port 995
    pop_account.inbound_mail_port_for_ssl 995
    pop_account.inbound_mail_use_ssl true
    pop_account.outbound_mail_host "smtp.gmail.com"
    pop_account.outbound_mail_use_authentication true
    pop_account.outbound_mail_port_for_ssl 465
    pop_account.outbound_mail_port_for_tls 587
  end

end
