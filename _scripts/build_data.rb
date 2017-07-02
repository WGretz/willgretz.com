require 'linkedin'
require 'yaml'
require 'pry'

# you're now free to move about the cabin, call any API method

def update_bgg_stats
    
end

#create a LinkedIn::Client, present user with 
def linkedin_client
    # load api

    linkedin_api_settings = YAML.load_file("#{Dir.home}/.linkedin")
    
    consumer_key    = linkedin_api_settings["consumer_key"]
    consumer_secret = linkedin_api_settings["consumer_secret"]
    authorize1      = linkedin_api_settings["authorize1"]
    authorize2      = linkedin_api_settings["authorize2"]
    client          = LinkedIn::Client.new(consumer_key, consumer_secret)
    
    unless authorize1 && authorize2
        # If you want to use one of the scopes from linkedin you have to pass it in at this point
        # You can learn more about it here: http://developer.linkedin.com/documents/authentication
        request_token = client.request_token({}, :scope => "r_basicprofile r_emailaddress")

        rtoken  = request_token.token
        rsecret = request_token.secret

        # to test from your desktop, open the following url in your browser
        # and record the pin it gives you
        puts request_token.authorize_url
        puts
        puts "What was the pin?"
        pin = gets.strip

        
        # then fetch your access keys
        authorize1, authorize2 = client.authorize_from_request(rtoken, rsecret, pin)
        #=> ["OU812", "8675309"] # <= save these for future requests
        
        linkedin_api_settings["authorize1"] = authorize1
        linkedin_api_settings["authorize2"] = authorize2
        f = File.open("#{Dir.home}/.linkedin","w+")
        f.puts linkedin_api_settings.to_yaml
    end
    # or authorize from previously fetched access keys
    client.authorize_from_access(authorize1, authorize2)
    binding.pry
end

def update_linkedin_testimonials
    linkedin_client
end

update_linkedin_testimonials