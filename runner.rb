# Dataset: https://data.sfgov.org/Economy-and-Community/Schools/tpp3-epx2
# API:

require 'soda/client'
require_relative 'app/models/soda_handler'


public_schools = SodaHandler::public_schools

public_schools.each do |school|
  school.each .each do |key, value|
    if key == "campus_name"
      # puts "#{key}: #{value}"
    end
  end
end

p SodaHandler::search("Miraloma")

# client = SODA::Client.new({:domain => "data.sfgov.org", :app_token => "gyCaUnYm6hyT6RCIJv0okR62e"})
#
# results = client.get("mmsr-vumy", :$limit => 5000)
#
# public_schools = client.get("mmsr-vumy", {"$where" => "general_type='PS'"})
#
# puts "Got #{public_schools.count} results"
# # p results.first
# # p public_schools.first
