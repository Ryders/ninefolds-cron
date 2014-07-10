require 'socket'

namespace :cron do

	host = Socket.gethostname
	ips = Socket.ip_address_list.map { |a| a.inspect_sockaddr if a.ipv4? }.reject!{ |ip| ip.blank? }.to_sentence

	task :hi do
	
		while true
			puts "#{Time.now} - Hi from #{host} (#{ips})"
			sleep 20
		end

	end

	task :worker do
	
		puts "#{Time.now} - Worker shit on #{host} (#{ips})"
		
	end

	task :web do
	
		puts "#{Time.now} - Web shit on #{host} (#{ips})"
		
	end

end