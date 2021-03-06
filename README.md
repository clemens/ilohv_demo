# README

Demo application for the [ilohv gem](http://github.com/clemens/ilohv).

## Setup

Run the following commands

```
git clone https://github.com/clemens/ilohv_demo.git
cd ilohv_demo
bundle
rake db:setup
bundle exec puma -C config/puma.rb
```

**It's important that you use Puma rather than the default Rails server** because the default Rails server only has one process but the demo app makes requests to itself (so it needs at least 2 processes/threads).

Then open `localhost:3000/files` in your browser. You should see a couple of directories and files there that you can browse as well as edit and delete and add new files and directories.

If you go to `localhost:3000` and enter any directory path into the form, it should display the files contained in this directory (not any subdirectories, though).
