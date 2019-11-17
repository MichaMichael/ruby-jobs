class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'

    url = 'https://api.hh.ru/vacancies?text=ruby&order_by=relevance&search_period=&per_page=100'
    html = URI(url)

    responce = Net::HTTP.get(html)
    @jobs = JSON.parse(responce)
  end
end
