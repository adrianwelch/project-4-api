class SkyscannerController < ApplicationController
  skip_before_action :authenticate_user!
  def flights

    baseUrl = 'http://partners.api.skyscanner.net/apiservices/browsequotes/v1.0/'

    tomorrow = Date.today + 1
    today = Date.today

    # first = HTTParty.get("#{baseUrl}#{params[:destination]}/#{tomorrow}", {
    first = HTTParty.get("#{baseUrl}GB/GBP/en-GB/51.5074,0.1278-latlong/#{params["lat"]},#{params["lng"]}-latlong/#{tomorrow}", {
      query: {
        apiKey: ENV["SKYSCANNER_API_KEY"]
      },
      headers: { 'Accept' => 'application/json' }
      })

      render json: first, status: :ok
  end
end
