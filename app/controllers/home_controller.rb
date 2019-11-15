class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'

    @url = 'https://api.hh.ru/vacancies?text=ruby&order_by=relevance&search_period=&items_on_page=100'

    @uri = URI(@url)
    @responce = Net::HTTP.get(@uri)
    @jobs = JSON.parse(@responce)
  end
end
