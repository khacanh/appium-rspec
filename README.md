### Install gems
```
bundle install
```

### Run spec
```
bundle exec rspec spec
# to run a specific test at a specific line
bundle exec rspec spec/integration/settings_spec.rb:35
```

### How to write test
Methods like these are in Appium::Android
```
text_fields
texts
first_textfield
first_text
button(1)
scroll_to
```

Limited sample codes are available here https://github.com/appium/ruby_lib/blob/master/docs/android_docs.md

