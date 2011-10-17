require "sinatra"
require "jsonify"

class String
  def from_json
    JSON.parse(self)
  end
end

def static(file)
  File.read(file)
end

get "/lines/:line_id/stops" do
  puts "/lines/:line_id/stops"
  static("static/stops.json").from_json[params["line_id"]].to_json
end

get "/" do
  static("public/index.html")
end