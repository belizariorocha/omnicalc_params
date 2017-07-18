class FormsController < ApplicationController
   
   def square_new
    render("square_new.html.erb")   
   end
   
   def square_results
    @x = params[:user_number].to_f
    @output = @x**2
    render("square_results.html.erb")   
   end
 
   
   def sqr_root_new
    render("sqr_root_new.html.erb")   
   end
   
   def sqr_root_results
    @x = params[:user_number].to_f
    @output = @x**0.5
    render("sqr_root_results.html.erb")   
   end
   
   def pmt_new
    render("pmt_new.html.erb")   
   end
   
   def pmt_results
    
    @apr = params[:user_apr].to_f
    @years = params[:user_years].to_i
    @P = params[:user_pv].to_f
    
    @r = @apr/(12*100) 
    @N = @years*12
    
    @output = @r*@P/(1-(1+@r)**(-@N))

    render("pmt_results.html.erb")   
   end

   def rnd_new
    render("rnd_new.html.erb")
   end

   def rnd_results
    
    @min = params[:user_min].to_f
    @max = params[:user_max].to_f
    @x = (@max - @min).to_i
    @output = (@min + @x*rand()).round(5)

    render("rnd_results.html.erb")   
   end
   
end