module Helpers
  def construct_json(hash) 
    hash.store(:internal_info, rand(999))
    if RUBY_ENGINE == 'ruby'
      require 'oj'
      #Compatibilty mode necesary otherwise the symbols will be as ':key'.
      Oj.dump(hash, :mode => :compat)
    else #if RUBY_ENGINE == 'jruby'
      require 'json'
      JSON.generate(hash)
    end
  end

  def read_json(json)
    if RUBY_ENGINE == 'ruby'
      require 'oj'
      # puts "===+===> #{json}"
      Oj.strict_load json
    else
      require 'json'
      JSON.parse json
    end 
  end
end