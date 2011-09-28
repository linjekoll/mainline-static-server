require "sinatra"
require "stalker"
require "json"

post "/" do
  begin
    data = JSON.parse(params[:data])
  rescue JSON::ParserError
    halt 400, "Invalid 'JSON' string. #{params[:data].inspect}"
  end
  
  Stalker.enqueue("linjekoll.socket-server", data.to_json)
  
  halt 200, "Data was added to 'linjekoll.socket-socket' queue."
end