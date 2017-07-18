class CalculationsController < ApplicationController
   
   def flex_square
    
    # The params function reads a string. We need to convert to number for calculations
    @x = params[:number].to_i
    @output = @x**2

    render("flex_square.html.erb")   
   end
   
   def flex_sqr_root
    
    # The params function reads a string. We need to convert to number for calculations
    @x = params[:number].to_i
    @output = @x**0.5

    render("flex_sqr_root.html.erb")   
   end
   
   def flex_pmt
    
    # The params function reads a string. We need to convert to number for calculations
    @basis_points = params[:basis_points].to_f
    @years = params[:number_of_years].to_i
    @P = params[:present_value].to_f
    
    @r = @basis_points/(12*10000) 
    @N = @years*12
    
    @output = @r*@P/(1-(1+@r)**(-@N))

    render("flex_pmt.html.erb")   
   end

   def flex_rnd
    
    # The params function reads a string. We need to convert to number for calculations
    @min = params[:min].to_i
    @max = params[:max].to_i
    @x = @max - @min
    @output = (@min + @x*rand()).round(5)

    render("flex_rnd.html.erb")   
   end
   
end