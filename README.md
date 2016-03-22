# janky-slack-custom

[Slack](https://slack.com/) chat service adapter for
[Janky](https://github.com/github/janky).

Adds custom slack message with user who ask for the build

![preview](/slack-message.png)

## Installation
  * Add `gem "janky-slack-custom", "~>0.1"` to your `Gemfile`
  * Run `bundle` to update the `Gemfile.lock`
  * Add `require "janky/chat_service/slack"` before `Janky.setup(ENV)` in
    `config/environment.rb`
  * Commit the changes and deploy to Heroku
  * Run `heroku run rake db:migrate` to migrate the database

## Configuration

You will need to setup an incoming webhook integration for your Slack team. You
can set this up at https://slack.com/services/new/incoming-webhook. When you
have created the incoming webhook take note of the `token` value in the URL for
the webhook.
  * `JANKY_CHAT` set to `slackcustom`
  * `JANKY_CHAT_DEFAULT_ROOM` set to the default Slack channel (includes the #)
  * `JANKY_CHAT_SLACKCUSTOM_ACCOUNT` set to your Slack team name
  * `JANKY_CHAT_SLACKCUSTOM_TOKEN` set to your authentication token found at
     https://api.slack.com
  * `JANKY_CHAT_SLACKCUSTOM_HOOK_TOKEN` set to your incoming webhook token from
     earlier
Once these are all configured you're ready to have your build notifications
come into your Slack channels.  If you want to customise the username and icon
that the Slack reports display, you can set the following environment
variables:
  * `JANKY_CHAT_SLACKCUSTOM_USERNAME` is the username to report as (default: `hubot`)
  * `JANKY_CHAT_SLACKCUSTOM_ICON_URL` is the icon to display (default: [labtocat][])
[labtocat]: https://octodex.github.com/images/labtocat.png
