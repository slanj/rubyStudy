class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
  end

  def another
    @else = params[:something]
  end
end
