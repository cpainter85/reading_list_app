require 'rails_helper'

feature 'List Page' do
  let!(:list) { create_list }

  scenario  'Root page has all lists' do
    list2 = create_list(name: 'Forever Evil Crossover')

    visit root_path
    expect(page).to have_content list.name
    expect(page).to have_content list2.name
  end

end
