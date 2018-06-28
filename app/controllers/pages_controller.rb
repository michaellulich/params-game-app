class PagesController < ApplicationController
  def query_pages_method
    input_name = params["name"]
    if input_name[0] == 'a'
      @output_with_letter = "your name begins with #{input_name[0]}"
      @output_name = "your name is #{input_name.upcase}"
    else 
      @output_name = "your name is #{input_name.upcase}"
      @output_with_letter = "your name begins with #{input_name[0]}"
    end 
    render "query_pages.json.jbuilder"
  end

  def guessing_game_method
    guess_number = 36
    @guess_number = guess_number

    input_number = params['number']

    if input_number.to_i < guess_number
      @output_message = "too low, guess again!"
    elsif input_number.to_i > guess_number
      @output_message = "too high, guess again!"
    elsif input_number.to_i == guess_number
      @output_message = "you got it!"
    end
    render "guessing_game.json.jbuilder"
  end

  def guessing_game_segments
    guess_number = 36
    input_number = params['variable']
    if input_number.to_i < guess_number
      @output_message = "too low, guess again!"
    elsif input_number.to_i > guess_number
      @output_message = "too high, guess again!"
    elsif input_number.to_i == guess_number
      @output_message = "you got it!"
    end
    render "guessing_game.json.jbuilder"
  end

  def body_params_method
    user_input = params["secret_info"]
    @output_message = "the secret message is #{user_input}"
    render "body_params.json.jbuilder"
  end

end
