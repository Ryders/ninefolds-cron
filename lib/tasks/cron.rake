require 'socket'

namespace :cron do

	host = Socket.ip_address_list.map { |a| a.inspect_sockaddr if a.ipv4? }.reject!{ |ip| ip.blank? }.to_sentence

	task :worker do
	
		while true
			puts "#{Time.now} - Worker process on #{host}"
			sleep 20
		end

	end

	task :banking do
	
		puts "#{Time.now} - Banking work on #{host}"
		
	end

	task :anything do
	
		puts "#{Time.now} - Running anything on #{host}"
		
	end

end