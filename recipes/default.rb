
# Cookbook Name:: progger
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

directory 'c:/ahmets/' do
	action :create
end

control_group '1 Verify All Folders Exist' do
	control '1.1 Verify Ahmet directory exists' do
		# it 'test if folder is there' do
		# 	expect(command("(test-path '/ahmets')").stdout).to match('True')
		# end
		describe user('aarsan') do
			it { should exist }
		end
		describe file('c:/ahmets/') do
			it { should be_directory }
		end
		describe windows_feature('IIS-Webserver') do
			it { should be_installed }
		end
		describe os['family'] do
			it { should eq 'windows' }
		end
		describe host('bing.com', port: 80, proto: 'tcp') do
			it { should be_resolvable }
		end
	end
end