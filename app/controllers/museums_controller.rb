require 'json'
require 'open-uri'


class MuseumsController < ApplicationController
  def index
    if params[:lat].present?
      url = "https://api.mapbox.com/geocoding/v5/mapbox.places/museums.json?proximity=#{params[:lng]},#{params[:lat]}&access_token=#{ENV['MAPBOX_API_KEY']}"
      museums = JSON.parse(URI.open(url).read)['features']
      @museums_json = {}
      museums.each do |museum|
        @museums_json[museum['context'][0]['text']] = museum['text']
      end
      # redirect_to museums_path
    end
  end
end
