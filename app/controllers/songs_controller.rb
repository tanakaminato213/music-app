# class SongsController < ApplicationController
#   def songselect
#     @post = Post.find_by(id: params[:id])
#     require 'net/http'
#     require 'uri'

#     uri = URI.parse("https://accounts.spotify.com/api/token?grant_type=client_credentials")
#     request = Net::HTTP::Post.new(uri)
#     request.content_type = "application/x-www-form-urlencoded"
#     request["Authorization"] = "Basic (ZTQxNDM5NDExYzlmNDUzMDhjY2FkZTVlMGZmNzI5YWE6NDZiODI3YzI4NjA2NGVmZmE0Nzc2MWRkZWFlYzczZjI=)"

#     req_options = {
#       use_ssl: uri.scheme == "https",
#     }

#     response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
#       http.request(request)
#     end

#     # response.code
#     # response.body
#     auth_params = JSON.parse(response.body)
#     gon.token = auth_params["access_token"]
# end
# end
