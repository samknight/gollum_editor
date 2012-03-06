# Gollum Editor

Text editor based on Gollum Wiki for Rails 3.1+

## Install

Add this to your GEMFILE

`gem 'gollum_editor'`

## Usage

Call it from your form builder

`f.gollum_editor :body`

or as a form helper

`gollum_editor @object, :method`