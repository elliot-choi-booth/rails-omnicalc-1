class CalcController < ApplicationController

  def square
    render({ :template => "calc_templates/square"})
  end

  def square_results
    @square_input = params.fetch("users_number").to_f

    @square_results = @square_input ** 2
    
    render({ :template => "calc_templates/square_results"})
  end

end
