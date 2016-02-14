
# Cookbook Name:: progger
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

directory 'c:/ahmets/' do
	action :create
end

control_group '1 Verify All Folders Exist' do
	control '1.1 Verify Ahmet directory exists' do
		it 'test if folder is there' do
			expect(command("(test-path '/ahmets')").stdout).to match('True')
		end	
	end
end