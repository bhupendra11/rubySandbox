require 'jumpstart_auth'

class MicroBlogger
	attr_reader :client

	def initialize
		puts "Initializing Microblogger....."

		@client = JumpstartAuth.twitter

	end

	def tweet(message)
		@client.update(message)
	end

	def run
    puts "Welcome to the app9ation Twitter Client!"
    puts " Enter 'q' to quit"

    command =""
	    while command != "q"
	    	printf "enter command: "
	    	input = gets.chomp

	    	parts = input.split(" ")

	    	command = parts[0]



	    	case command
	    	    when 'q' then puts 'Goodbye!!'
	    	    when 't' then tweet(parts[1..-1].join(" ")); puts "tweet posted"
	    	    when 'dm' then dm(parts[1], parts[2..-1].join(" "))	
	    	    else
	    	    	puts "Sorry I dont know how to #{command}"
	    	end

	    end

  	end


  	def dm(target, message)
  		puts "Trying to send #{target} this direct message"
  		puts message

  		screen_names = @client.followers.collect { |follower| @client.user(follower).screen_name }

  		screen_names.each do |x|
  			puts x
  		end

  		if(screen_names.include?(target))
  	  		message = "@#{target} #{message} "
	  		tweet(message)

	  		puts "Tweet sent !!"
	  	else
	  		puts "Error #{target}  is not your follower, you can't send him direct message"
	  	end
  	end

end 


blogger = MicroBlogger.new

blogger.run




=begin
#blogger.tweet("This a message longer than the usual 140 characters that twitter.com allows. So I am going to write some gibberiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiish over here. Lets seeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee how it goes!!!!")

puts "Enter the tweet !!  "
msg = gets.chomp

#puts msg.length

if (msg.length <= 140)
	blogger.tweet(msg)
	puts "Status updated !!"
else
	puts "Message is longer than 140 characters!! Please try again"
end



=end