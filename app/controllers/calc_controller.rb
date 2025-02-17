class CalcController < ApplicationController

  def square
    render({ :template => "calc_templates/square"})
  end

  def square_results
    @square_input = params.fetch("users_number").to_f

    @square_results = @square_input ** 2
    
    render({ :template => "calc_templates/square_results"})
  end

  def square_root
    render({ :template => "calc_templates/square_root"})
  end

  def square_root_results
    @sqrt_input = params.fetch("users_number").to_f

    @sqrt_results = @sqrt_input ** 0.5

    render({ :template => "calc_templates/square_root_results"})
  end

  def payment
    render({ :template => "calc_templates/payment"})
  end

  def payment_results
    @apr = params.fetch("apr").to_f / 1200

    @years = params.fetch("years").to_i
    @years_converted = @years * 12

    @principal = params.fetch("principal").to_f

    @result = @apr * @principal / (1 - (1 + @apr)) ** (@years_converted - 1)

    render({ :template => "calc_templates/payment_results"})
  end

  def random
    render({ :template => "calc_templates/random"})
  end

  def random_results
    @minimum = params.fetch("minimum").to_f
    @maximum = params.fetch("maximum").to_f

    @result = rand(@minimum..@maximum)

    render({ :template => "calc_templates/random_result"})
  end
  
end
