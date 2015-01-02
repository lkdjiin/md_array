# MdArray

An experiment on multidimensional array.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'md_array'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install md_array

## Usage

```
> md_arr = MdArray.new([2,3])
> puts md_arr
MdArray 2 x 3
0 0 0
0 0 0

> md_arr[1,2] = 5
> puts md_arr
MdArray 2 x 3
0 0 0
0 0 5

# Initialize with a random value
> MdArray.new([2,3]) { rand(2) }
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/md_array/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
