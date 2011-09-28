# External Provider API

Production port is *31415*.

## How set up

Start by cloning the project using git.

`git clone git@github.com:linjekoll/provider-server-ruby.git`

Navigate to the downloaded folder and run bundler.

`cd provider-server-ruby && bundle install`

## Server start [production]

``` bash
bundle exec ruby server.rb -p 31415
```

## Server start [development]

``` bash
bundle exec shotgun start.ru -p 31415
```

Using [shotgun](https://rubygems.org/gems/shotgun) will cause the server to restart everytime `server.rb` is changed.

... or start the server using [foreman](http://railscasts.com/episodes/281-foreman).

`foreman start`

Beanstalkd needs to be started manually using `beanstalkd`.

## Requests

### POST /

``` ruby
data = {
  this: "could",
  be: "any",
  anything: nil
}.to_json

RestClient.get("http://localhost:31415/", data)
```

## Status codes

- **400** Wrong arguments, in most cases invalid JSON data.
- **200** Everything went okey.
- **500** Internal problems.