# TWW Ruby

### Download and Install
```
gem install tww-ruby
```

or on your Gemfile:
```
gem "tww-ruby"
```

and
```
bundle install
```

create tww config initializer
```
rails g tww:install
```

after config file created, you should define config params:

```ruby

require 'tww'

Zenvia.configure do |config|
  config.numUser	= 'YOUR TWW NUMBER USER'
  config.password 	= 'YOUR TWW PASSWORD'
end

```

### Usage

```ruby

require 'tww'

# Sending a SMS

sms = TWW::Sms.new('you-id', 'test message!', 5521999999999)
sms.forward =>

```


### Contributing to tww-ruby

1. Fork the project.
2. Start a feature/bugfix branch.
3. Commit and push until you are happy with your contribution.
4. Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.


Copyright (c) 2012 ARAAN BRANCO. See LICENSE.txt for
further details.
