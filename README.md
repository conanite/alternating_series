# AlternatingSeries

This is a very simple macro to generate a method that returns a value from an array of values you provide.

For example, if you generating HTML but you are not using nth-child(2n+1) in your CSS, you might want another way to
style alternating rows in a list or table, for better readability.

Here's a way to do that (example in HAML) -

    - things.each do |thing|
      %tr(class=rowclass)
        %td= thing.name
        %td= thing.price

Repeated calls to #rowclass return 'oddrow', 'evenrow', 'oddrow', 'evenrow', and so on.

AlternatingSeries generalises this concept so you can declare any name and expect it to provide sequential values from an array you provide:

    series :wagga, %{ wimp woogle wop }

Calling #wagga repeatedly will return

    irb> wagga
     => "wimp"

    irb> wagga
     => "woogle"

    irb> wagga
     => "wop"

    irb> wagga
     => "wimp"

    irb> wagga
     => "woogle"

You also get the utility methods #last_X and #reset_X -

    irb> last_wagga
     => "woogle"

    irb> reset_wagga
    irb> wagga
     => "wimp"


## Installation

Add this line to your application's Gemfile:

    gem 'alternating_series'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install alternating_series

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
