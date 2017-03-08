#
# Cookbook Name:: users
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
admins = data_bag('admins')

admins.each do |login|
  admin = data_bag_item('admins', login)
  home = "/home/#{login}"

  user(login) do
    manage_home true
  end

end

