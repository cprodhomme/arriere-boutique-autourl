# Arriere::Boutique::Autourl

Autourl is a gem that includes some helpers for you app when you want to make a generic page

## Usage

```ruby
record = User.last # or any record that you wan't

edit_path_for(record)
=> "/users/1/edit"
# the same result of edit_user_path

# if you want the url
edit_url_for(record)
=> "http://test.host/users/1/edit"

# for the index
index_path_for(record)
=> "/users"

index_path_for(User)
=> "/users"

# other examples
new_path_for(record)
=> "/users/1/new"

# with an anchor
new_path_for(user, anchor: "title1")
=> "/users/new#title1"

# with additional params
new_path_for(user, key: "value")
=> "/users/new?key=value"

# with a prefix
new_path_for(user, prefix: "admin")
=> "/admin/users/new"
# the same result of new_admin_user_path
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem "arriere-boutique-autourl", git: "https://github.com/cprodhomme/arriere-boutique-autourl"
```

And then execute:
```bash
$ bundle
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
