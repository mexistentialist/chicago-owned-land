require "chicago_owned_land/version"
require "unirest"

module ChicagoOwnedLand
	class CityProperty

		attr_reader :direction, :ward, :sq_ft, :needs_recoding, :location, :longitude, :latitude, :human_address, :tif_name_area, :street_name, :pin, :community_area, :street_number, :street_type, :zoning_classification


		def initialize(land_api_info)
			@direction = land_api_info["d"]
			@ward = land_api_info["ward"]
			@sq_ft = land_api_info["sq_ft"]
			@location = land_api_info["location"]
			if land_api_info["location"]
				@needs_recoding = land_api_info["location"]["needs_recoding"]
				@longitude = land_api_info["location"]["longitude"]
				@latitude = land_api_info["location"]["latitude"]
				@human_address = land_api_info["location"]["human_address"]
			end
			@tif_name_area = land_api_info["tif_name_area"]
			@street_name = land_api_info["street_name"]
			@pin = land_api_info["digit_pin"]
			@community_area = land_api_info["community_area"]
			@street_number = land_api_info["street_number"]
			@street_type = land_api_info["type"]
			@zoning_classification = land_api_info["zoning_classification"]
		end

		def self.all
			api_array = Unirest.get('https://data.cityofchicago.org/resource/aksk-kvfp.json').body
			land = []
			api_array.each do |land_info|
				land << CityProperty.new(land_info)
			end
			land
		end



	end
end
