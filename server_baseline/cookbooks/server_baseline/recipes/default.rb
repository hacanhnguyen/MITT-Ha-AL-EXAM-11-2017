#
# Cookbook:: server_baseline
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

file "#{ENV['HOME']}/final.txt" do
  content 'This file was created by Chef!'
end


