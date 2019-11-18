require 'rails_helper'


describe 'GET page with jobs' do
  it "should get the job link 'Link'" do
    visit '/'
    expect(page).to have_link('Link')
  end
end