# encoding: utf-8
require 'sinatra'
require 'cowsay'

get '/london' do
  london_time = Time.now.utc
  forecast = "В Лондоне сейчас: #{london_time}"
  "<pre>" + Cowsay.say(forecast, "Dragon") + "</pre>"
end