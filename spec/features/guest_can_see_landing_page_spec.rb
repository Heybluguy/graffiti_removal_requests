require 'rails_helper'

RSpec.describe 'Landing View' do
  it 'displays a search bar for Alderman' do
    visit '/'

    expect(page).to have_content('Alderman')
    expect(page).to have_content('Month and Year')
    expect(page).to have_button('Search')
    expect(page).to have_selector(:css, '.input__search-bar.alderman')
    expect(page).to have_selector(:css, '.button__search-bar')
  end

  it 'can take a query and search based off that input' do
    visit '/'

    fill_in 'q',	with: 'Hopkins'
    select "2017",	:from => "date_year"
    select "August",	:from => "date_month"
    find('.button__search-bar').click

    expect(current_path).to eq(search_path)
  end

  it 'can search queries that are case-insensitive' do
    visit '/'

    fill_in 'q',	with: 'hopkins'
    select "2017",	:from => "date_year"
    select "August",	:from => "date_month"
    find('.button__search-bar').click

    expect(current_path).to eq(search_path)
  end

  it 'can search queries that are full names' do
    visit '/'

    fill_in 'q',	with: 'Brian Hopkins'
    select "2017",	:from => "date_year"
    select "August",	:from => "date_month"
    find('.button__search-bar').click

    expect(current_path).to eq(search_path)
  end

end
