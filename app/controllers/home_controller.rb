require 'net/http'
require 'json'

class HomeController < ApplicationController
  def index
    @jobs = parse_hh
  end

  private

  def parse_hh
    url = 'https://api.hh.ru/vacancies?text=ruby&order_by=relevance&search_period=&per_page=100'
    html = URI.parse(url)
    responce = Net::HTTP.get(html)

    if response.code == '200'
      JSON.parse(responce)
    else
      puts "Error"
      puts "Response code: #{responce.code}"
    end
  end
end
