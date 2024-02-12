class DirectorsController < ApplicationController
  def index
    render ({ :template => "director_templates/list" })
  end
  def show
    the_id = params.fetch("the_id")
    matching_records = Director.where({ :id => the_id })
    @the_director = matching_records.at(0)

    render({ :template => "director_templates/details"})
  end
  def junior
    @young = Director.all.where.not({ :dob => nil }).order({ :dob => :asc}).last

    render({ :template => "director_templates/youngest" })
  end
  def senior
    @elder = Director.all.where.not({ :dob => nil }).order({ :dob => :asc}).first
    render({ :template => "director_templates/eldest" })
  end
end
