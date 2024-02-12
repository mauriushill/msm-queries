Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "index"})
  get("/directors/youngest", { :controller => "directors", :action => "junior"})
  get("/directors/eldest", { :controller => "directors", :action => "senior"})
  get("/directors/:the_id", { :controller => "directors", :action => "show"})
  get("/movies", { :controller => "movie", :action => "list"})
  get("/movies/:movie_id", { :controller => "movie", :action => "detail"}) 
  get("/actors", { :controller => "actor", :action => "act_list"})
  get("/actors/:the_id", { :controller => "actor", :action => "act_result"})
end
