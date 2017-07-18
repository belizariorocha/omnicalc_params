Rails.application.routes.draw do

  #Build report: https://grades.firstdraft.com/builds/707dcca0-019d-4f9a-b3d4-b5455841371c
  
  get("/", { :controller => "forms", :action => "square_new"})
  
  # Part I: Flexible Routes
  
  get("/flexible/square/:number",                                        { :controller => "calculations", :action => "flex_square"})
  get("/flexible/square_root/:number",                                   { :controller => "calculations", :action => "flex_sqr_root"})
  get("/flexible/payment/:basis_points/:number_of_years/:present_value", { :controller => "calculations", :action => "flex_pmt"})
  get("/flexible/random/:min/:max",                                      { :controller => "calculations", :action => "flex_rnd"})
  
  # Part II: Forms
  
  get("/square/new",          { :controller => "forms", :action => "square_new"})
  get("/square/results",      { :controller => "forms", :action => "square_results"})
  get("/square_root/new",     { :controller => "forms", :action => "sqr_root_new"})
  get("/square_root/results", { :controller => "forms", :action => "sqr_root_results"})
  get("/payment/new",         { :controller => "forms", :action => "pmt_new"})
  get("/payment/results",     { :controller => "forms", :action => "pmt_results"})
  get("/random/new",          { :controller => "forms", :action => "rnd_new"})
  get("/random/results",      { :controller => "forms", :action => "rnd_results"})
  
  # Part III: More Practice  
  # code code code

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
