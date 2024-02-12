class ActorController < ApplicationController
  def act_list
    Actor.where
    render ({ :template => "actor_templates/list"}) 
  end
  def act_result
    the_id = params.fetch("the_id")

    matching_records = Actor.where({ :id => the_id })

    @the_actor = matching_records.at(0)
    
    render ({ :template => "actor_templates/description"})
  end
end
