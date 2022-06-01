class MainController < ApplicationController
  def answer
    render html: 'this is the answer.'
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
end
