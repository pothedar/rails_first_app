class StaticPagesController < ApplicationController
  def index
  end

  # new landing page
  def landing_page
    @featured_products = Product.limit(3)
  end

end