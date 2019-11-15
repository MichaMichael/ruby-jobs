class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'

    @url = 'https://api.hh.ru/vacancies'
    @uri = URI(@url)
    @responce = Net::HTTP.get(@uri)
    @jobs = JSON.parse(@responce)
  end



  def already_cv_sent
  end
end
