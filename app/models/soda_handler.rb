require 'soda/client'

module SodaHandler #< ActiveRecord::Base

  @client = SODA::Client.new({:domain => "data.sfgov.org", :app_token => "
   gyCaUnYm6hyT6RCIJv0okR62e"})

  def self.search(term)
    @client.get("mmsr-vumy", {"$q" => "#{term}"})
  end

  def self.public_schools
    @client.get("mmsr-vumy", {"$where" => "general_type='PS'"})
  end
end
