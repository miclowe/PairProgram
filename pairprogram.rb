require 'pry'
gem 'sinatra', '1.3.0'
require 'sinatra'
require 'sinatra/reloader' if development?

# Do you have a test for that?
# Does the test pass?
# Need to refactor?
# Refactor the code

get '/' do
  @question = "Do you have a test for that?"
  @yes = '/pass'
  @no = '/write_test'
  erb :pairprogram_yn
end

get '/pass' do
  @question = "Does the test pass?"
  @yes = '/refactor'
  @no = '/write_code'
  erb :pairprogram_yn
end

get '/refactor' do
  @question = "Need to refactor?"
  @yes = '/do_refactor'
  @no = '/new_feature'
  erb :pairprogram_yn
end

get '/do_refactor' do
  @question = "Refactor the code"
  @done = '/pass'
  erb :pairprogram_done
end

get '/write_test' do
  @question = "Write a test"
  @done = '/pass'
  erb :pairprogram_done
end

get '/write_code' do
  @question = "Write just enough code for the test to pass."
  @done = '/pass'
  erb :pairprogram_done
end

get '/new_feature' do
  @question = "Select a new feature to implement."
  @continue = '/'
  erb :pairprogram_complete
end