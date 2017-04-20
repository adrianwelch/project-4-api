class SkyscannerController < ApplicationController
  skip_before_action :authenticate_user!
  def flights
    baseUrl = 'http://partners.api.skyscanner.net/apiservices/browsequotes/v1.0/UK/GBP/en-GB/LON/'

    tomorrow = Date.today + 1

    # first = HTTParty.get("#{baseUrl}#{params[:destination]}/#{tomorrow}", {
    first = HTTParty.get("#{baseUrl}JFK/#{tomorrow}", {
      query: {
        apiKey: ENV["SKYSCANNER_API_KEY"]
      },
      headers: { 'Accept' => 'application/json' }
      })

      render json: first, status: :ok
  end
end
