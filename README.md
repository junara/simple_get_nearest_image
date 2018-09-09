# simple_get_nearest_image
Calc nearest images

# To test
* Create "selected" directory in this
* Get MNIST png images.
* Save MNIST png images to "selected" directory. If you just test this, you would save 1-1000 files because of calc time.
* `bundle install`
* `bundle exec ruby test.rb`
* If success, you get followin result

```
bundle exec ruby test.rb
{:file=>"selected/mnist1.png", :length=>0.0}
{:file=>"selected/mnist833.png", :length=>55743.0}
{:file=>"selected/mnist965.png", :length=>61434.0}
{:file=>"selected/mnist653.png", :length=>61455.0}
{:file=>"selected/mnist772.png", :length=>61791.0}
{:file=>"selected/mnist50.png", :length=>62775.0}
{:file=>"selected/mnist131.png", :length=>64959.0}
{:file=>"selected/mnist126.png", :length=>65046.0}
{:file=>"selected/mnist800.png", :length=>65220.0}
{:file=>"selected/mnist133.png", :length=>65337.0}
```
