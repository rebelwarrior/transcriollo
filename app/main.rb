#!/usr/bin/env ruby
# encoding: utf-8

## Load Required Gems ##
%w[sinatra haml oj activerecord pg ./lib/helper sinatra-activerecord].each do |gem| 
  require gem
end
   
### Main Sinatra Class ###
class TransCriolloWebAPI < Sinatra::Base
  
  helpers Helpers 
  ### Configure Block ###
  configure do
    set :server, :puma
    set :port, 3000
    set :protection, :origin_whitelist => ['http://127.0.0.1']
    # set :public_dir , File.join(settings.root + '/../public')

    # enable :lock (Mutex Lock for threading)
    # mime_type :plain, 'text/plain'
    mime_type :json, 'script/javascript' 
  end
  
  ### Routes ###  
  get '/' do
    construct_json(result)
  end
  
  get 'route/:id' do
    construct_json(result)
  end
  
  
end