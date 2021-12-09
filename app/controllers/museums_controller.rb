require 'json'
require 'open-uri'

class MuseumsController < ApplicationController
  def index
    if params[:lat].present?

    end
  end
end

base_url = "https://api.mapbox.com"
endpoint_url = "/geocoding/v5/mapbox.places/museums.json"
