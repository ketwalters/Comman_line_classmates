#require the libraries that we need
require 'open-uri' #open the file on the internet
require 'nokogiri' #

class Scraper
	#attr_reader :download - dont' need anymore
	attr_reader :html
	
	def initialize(url)
		@download = open(url)
		@html = NokoGiri::HTML(download) #download translates the file into Ruby
	end

	def get_students_names
		all_the_h3s = @html.search("h3")
		all_the_h3s.text 
		#or
		#@html.serach("h3").txt
	end

	def twitter_name
		twitter_names = []
		all_the_twitter_names = @html.search('li :first-child a').split(" ")
		array_twitter = all_the_twitter_names.select{|name| name} [0] == "@"}

		def get_blog
			blog_url = []
			blog_url = @html.search("a.blog[href]")[i]['href']
		end
		blog_url
end

my_scraper = Scraper.new("http://flatironschool-bk.herokuapp.com")
#puts my_scraper.get_students_names
puts my_scraper.twitter_name