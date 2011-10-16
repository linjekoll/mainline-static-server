require "sinatra"
require "json"

post "/" do
end

get "/" do
  File.read(File.join("public", "index.html"))
end