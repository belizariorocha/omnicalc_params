Rails.application.routes.draw do

  get("/",                  { :controller => "calculations", :action => "dummy"})
  
  # Part 1: Flexible Routes
  
  get("/flexible/square/:number",                                        { :controller => "calculations", :action => "flex_square"})
  get("/flexible/square_root/:number",                                   { :controller => "calculations", :action => "flex_sqr_root"})
  get("/flexible/payment/:basis_points/:number_of_years/:present_value", { :controller => "calculations", :action => "flex_pmt"})
  
  # Part 2: Forms
  
  get("/square/new", { :controller => "calculations", :action => "square_new"})
  
  # Part 3 
  # code code code

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
