class ExampleController < ApplicationController

  def get_all_cats
    cats = CatApi.new
    @breeds = cats.breeds
  end

  def get_a_cat
    cat = CatApi.new
    @breed = cat.breed
    if @breed['image'].nil?
      @image = nil
    else
      @image = @breed['image']['url']
    end
    # debug
    # @image = cat.image(@breed['id'])
  end

  def servicenow
    sn = Servicenow.new
    @response = sn.create_connection
  end

  def get_kanye_quote
    ky = KanyeApi.new
    @quote = ky.get_a_quote
  end
end
