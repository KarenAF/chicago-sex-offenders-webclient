class OffendersController < ApplicationController

  def index
    @offenders = Unirest.get("https://data.cityofchicago.org/resource/cjcg-yw47.json").body
    render 'index.html.erb'
  end

  def add_to_database
    @offenders
  end
end
