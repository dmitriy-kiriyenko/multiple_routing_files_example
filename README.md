== README

This application is to demonstrate how to have multiple routing files in Rails
4.

We use [routing
concerns](http://guides.rubyonrails.org/routing.html#routing-concerns).

So we add a line in the beginning of routing block in `config/routes.rb`:

```ruby
Dir[Rails.root.join("config/routing/**/*.rb")].each { |f| instance_eval(File.read(f)) }
```

In files we specify _only concerns_: we will use them in routes. Like this:

```ruby
namespace :admin do
  concerns :admin
end
```

Unfortunately we _can't_ do `namespace :admin, concerns: :admin`, because
`namespace` _requires_ block.

That's it! For the rest, see the application code.
