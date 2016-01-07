class TweetsController < ApplicationController
	def index
		@tweets = twitter_client.search("Foo").take(10)
		@images = twitter_client.search("Food filter:images").take(10)
		@tweet = Tweet.new
	end

	def new
		@tweet = Tweet.new
	end

	def create
		@tweets = twitter_client.search("Foo").take(10) #not adding this line produced a nilNil class error on the Tweet stream in Index for some reason
		@tweet = Tweet.new(tweet_params)
		if @tweet.save
			twitter_client.update(@tweet.message.to_s)
			render :index
		else
			render :new
		end
	end

	def edit
	end
	
	def update
	end

	def show
	end

	def destroy
	end


	private
		def tweet_params
			params.require(:tweet).permit(:message)
		end	


end
