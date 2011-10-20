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
  puts "/lines/#{params["line_id"]}/stops"
  static("static/stops.json").from_json[params["line_id"]].to_json
end

get "/lines/:line_id" do
  static("static/lines.json").from_json["4"].to_json
end

get "/lines" do
  (params[:amount] || 30).to_i.times.map do |n|
    static("static/lines.json").from_json["4"].merge("id" => n + 1)
  end.to_json
end

get "/" do
  static("public/index.html")
end

get "/static/line.template.html" do
  static("static/line.template.html")
end