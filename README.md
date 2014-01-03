# SuchDogeApi

A simple gem for using the dogeapi.com service. See their site for specifics on the api: 
https://dogeapi.com/api_documentation

## Installation

Add this line to your application's Gemfile:

    gem 'such_doge_api'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install such_doge_api

## Usage

Set your api key in your environment like so:

DOGE_API_KEY = "111111111111111112222222222222""

Then just make calls:

SuchDogeApi.get_my_addresses

SuchDogeApi.withdraw(payment_address, amount)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
