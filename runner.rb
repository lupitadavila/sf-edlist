# Dataset: https://data.sfgov.org/Economy-and-Community/Schools/tpp3-epx2
# API: https://dev.socrata.com/foundry/data.sfgov.org/mmsr-vumy

require 'soda/client'

client = SODA::Client.new({:domain => "data.sfgov.org", :app_token => "
gyCaUnYm6hyT6RCIJv0okR62e"})

results = client.get("mmsr-vumy", :$limit => 5000)

public_schools = client.get("mmsr-vumy", {"$where" => "general_type='PS'"})

puts "Got #{public_schools.count} results"
# p results.first
# p public_schools.first
public_schools.each do |school|
  school.each .each do |key, value|
    if key == "campus_name" || key == "cds_code"
      puts "#{key}: #{value}"
    end
  end
end
