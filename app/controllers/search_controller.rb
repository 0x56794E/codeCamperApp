class SearchController < ApplicationController
  def index
  	query = params[:q].downcase
  	name_matches = User.where("lower(name) LIKE ?", "%#{query}%") # ILIKE = ignore case, like = keyword kind of matches
  	place_matches =  User.where("lower(location) LIKE ?", "%#{query}%") 
  	email_matches =  User.where("lower(email) LIKE ?", "%#{query}%") 
  	school_matches =  User.where("lower(school) LIKE ?", "%#{query}%") 

  	@results = name_matches.to_a + place_matches.to_a + email_matches.to_a + school_matches.to_a
  	@results = @results.uniq

  end
end
