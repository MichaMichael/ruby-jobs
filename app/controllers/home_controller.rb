class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'

    @url = 'https://api.hh.ru/vacancies?text=ruby'
    @uri = URI(@url)
    @responce = Net::HTTP.get(@uri)
    @jobs = JSON.parse(@responce)
  end
end
