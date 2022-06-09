class ExampleController < ApplicationController
  def get_all_cats
    cats = CatApi.new
    @breeds = cats.breeds
  end

  def get_a_cat
    cat = CatApi.new
    @breed = cat.breed
  end

  def servicenow
    sn = Servicenow.new
    @response = sn.create_connection
  end
end
