class StaticPagesController < ApplicationController
  def index
  end

  # new landing page
  def landing_page
    @featured_product = Product.first
  end

end
