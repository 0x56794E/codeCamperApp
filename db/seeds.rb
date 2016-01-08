# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

counter = 0

CSV.foreach(File.expand_path(File.dirname(__FILE__) + "/data/codecampdata.csv")) do |row|

  if counter == 0
  	counter +=1
  	next
  else
  	users = User.create(name: row[1], email: row[2], generation: row[3], location: row[4], school: row[5], lat: row[8].to_f, long: row[9].to_f, image: row[10])
  end
end
