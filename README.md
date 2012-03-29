# Gollum Editor

Text editor extracted from [Gollum Wiki](https://github.com/github/gollum) for Rails 3.1+

## Install

Add this to your GEMFILE

`gem 'gollum_editor'`

## Usage

Include the javascripts and stylesheets

`<%= stylesheet_link_tag "gollum_editor/gollum" %>`

`<%= javascript_include_tag "gollum_editor/gollum" %>`

Call it from your form builder

`f.gollum_editor :body`

or as a form helper

`gollum_editor @object, :method`