

ENV["FOOD2FORK_KEY"] = '2cf6a2d23beae9518d7fa73aad4948cc'
ENV["FOOD2FORK_SERVER_AND_PORT"] = ''

class Recipe
	include HTTParty

	key_value = ENV["FOOD2FORK_KEY"]
	hostport = ENV["FOOD2FORK_SERVER_AND_PORT"] || 'www.food2fork.com'

	base_uri "http://#{hostport}/api"
	default_params :key => key_value
	format :json

	def self.for term
		get("/search", query: { q: term})["recipes"]
	end
end