# Gollum Editor

A rich text editor using markdown extracted from [Gollum Wiki](https://github.com/github/gollum) for Rails 3.1+

## Install

Add this to your GEMFILE

`gem 'gollum_editor'`

`rails g gollum_editor:install`

## Usage

Include the javascripts and stylesheets

`<%= stylesheet_link_tag "gollum_editor/gollum" %>`

`<%= javascript_include_tag "gollum_editor/gollum" %>`

Call it from your form builder

`f.gollum_editor :body`

or as a form helper

`gollum_editor @object, :method`

## Output

As this editor will convert your text to Markdown. To output with ruby use a library like [Blue Cloth](https://rubygems.org/gems/bluecloth)