class MovieController < ApplicationController
  def detail
    movie_id = params.fetch("movie_id")
    matching_records = Movie.where({ :id => movie_id })
    @the_movie = matching_records.at(0)
    render ({ :template => "movie_templates/details"})
  end
  def list
    movie_page = params.fetch("controller")
    @full_list = Movie.where({ :id => movie_page })
    
    render ({ :template => "movie_templates/list"})

  end
end
