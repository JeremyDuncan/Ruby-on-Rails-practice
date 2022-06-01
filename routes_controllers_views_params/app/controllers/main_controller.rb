class MainController < ApplicationController
  def answer
    @result_string = if params[:number].to_i.even?
                       'Even'
                     else
                       'Odd'
                     end
    render 'answer'
  end

  def question
    @our_question = 'Why did the chicken cross the road?'
    render 'question'
  end

  def home
    render 'home'
  end

  def greeting
    @name = params[:name]
    render 'greeting'
  end

  def jeremyduncan
    render 'jeremy'
  end

  def cubed
    @number = params[:num]
    @result = params[:num].to_i**3
    render 'cubed'
  end

  def evenly
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i

    @result = if @num1 % @num2 == 0
                'Evenly divisible'
              else
                'not evenly divisible'
              end

    render 'evenly'
  end

  def palindrome
    @string = params[:string]

    if @string == @string.reverse
      @result = 'is a palindrome.'
    else
      @result = 'is not a palindrome.'

      render 'palindrome'
    end
  end
end
