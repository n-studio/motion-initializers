# motion-initializers

## Introduction

I tried to add the sugar of Swift to RubyMotion.
(It would be awesome if it was RubyMotion native. cc @lrz)
Unfortunately, I am still not satisfied by the result.

Please don't use it in production!

## Installation

gem 'motion-initializers', git: 'https://github.com/n-studio/motion-initializers.git'

## Usage

### initializers
```ruby
view = UIView.alloc.initWithFrame([[100, 100], [100, 50]]) # before
view = UIView.new(frame: [[100, 100], [100, 50]]) # after
```

### Enum constants shortcuts (UIControlEventTouchUpInside => :touch_up_inside)
```ruby
@button = UIButton.new(frame: [[100, view.maxY], [100, 50]])
@button.font = UIFont.new(name: "MarkerFelt-Thin", size: 45)

@button.set_title("Click me", state: :normal) # Ruby way
# or
@button.setTitle!("Click me", forState: :normal) # Cocoa way

@button.add_target(self, action: "pressed:", events: :touch_up_inside) # shorter
# or
@button.addTarget!(self, action: "pressed:", forControlEvents: :touch_up_inside) # easier to guess from Apple documentation
```

### optional chaining

(https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/Swift_Programming_Language/OptionalChaining.html)

```ruby
@button._?{maybe_not_defined_method.other_method}
@button._?{maybe_not_defined_method}._?{maybe_not_defined_method}
@button._?('maybe_not_defined_method:arg2:', arg1, arg2)._?('maybe_not_defined_method')

if (secondRoomName = john.residence._?{|r| r[1]}._?{name})
  p "The second room name is #{secondRoomName}."
elsif (firstRoomName = john.residence._?{first}._?{name})
  p "The first room name is #{firstRoomName}."
else
  p "Unable to retrieve the first or second room name."
end

@button._!{maybe_not_defined_method}
=> raise an error is button is nil
```

That is said, I don't find this syntax very nice.

Swift
```swift
john.residence?[0].name
```

Ruby
```ruby
john.residence && john.residence[0] ? john.residence[0].name : nil # old way
john.residence._?{|r| r[0]}._?{name} # nay
john.residence._?{fetch(0, nil)}._?{name} # nay
```

Ruby is still longer/more verbose than Swift!! Any idea?

## Contributing

1. Suggest better syntax

or

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Check there is no memory leak (veryyyyy important)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request
