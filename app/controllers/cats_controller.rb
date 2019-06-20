class CatsController < ApplicationController

  def match
    @matches = CatMatcher.matches params: cat_params
  end

  def quiz
    @quiz = Quiz.new
  end

  private

  def cat_params
    request.parameters.select { |k,v| k =~ /q\d+/ }
  end

end
