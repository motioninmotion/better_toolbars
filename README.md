# BetterToolbar

No Ruby developer likes all those crazy constants thay Apple makes us try and remember, and creating a toolbar is full of that, plus extra crazy stuff that is basically just left over from the history of iOS. BetterToolbar helps you create toolbars and toolbar items in a more Ruby-esque way.

## Installation

Add this line to your application's Gemfile:

    gem 'better_toolbar'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install better_toolbar

## Usage

In version 0.0.1, you can create a `UIBarButtonItem` using a nicer factory style (yes, factories make you think of Java, but the fact is factories are useful).

```ruby
toolbar = UIToolbar.new
item = BetterToolbar::Item.create(title: "Item 1", target: the_target, action: 'method_on_the_target:')
toolbar.setItems([item], animated: false)
```

In later versions, the plan is to have a nicer factory for a whole toolbar, but this works well for now. A preview is it might look something like this though.

**NOT REAL CODE**

```ruby
toolbar = BetterToolbar.create({
  target: self,
  items: [
    { title: "Item 1", action: "item_one_pressed:" },
    { image: "sun", action: "sun_pressed:" },
    :flexible_space,
    { title: "Item 3", target: different_target, action: "some_action:" }
  ]
})
```

That looks much nicer than what it would usually take to make a toolbar, and that's where it would be nice to get to.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Make sure your tests pass
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request
