# Mainline static server

[![Join the chat at https://gitter.im/linjekoll/mainline-static-server](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/linjekoll/mainline-static-server?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Production port is *31415*.

## How set up

Start by cloning the project using git.

`git clone git@github.com:linjekoll/mainline-static-server.git`

Navigate to the downloaded folder and run bundler.

`cd mainline-static-server && bundle install`

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

## Requests

### GET /lines/:line_id/stops

Returns a list of stops for the given station `line_id`.

``` javascript
[{
  "name": "Mölndals sjukhus",
  "id": 2,
  "time_from_prev_station": 120,
  "destination_station": 4,
  "origin_station": 1,
  "sid": "00012130"
}]
```
