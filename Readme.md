# Mainline static server

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