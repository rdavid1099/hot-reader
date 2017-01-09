require 'rails_helper'

describe 'user sees top links' do
  it 'sees 10 top read stories at root' do
    create_readers(15)
    visit root_path

    expect(page).to have_content('TEST TITLE 14')
    expect(page).to have_content('TEST TITLE 13')
    expect(page).to have_content('TEST TITLE 12')
    expect(page).to have_content('TEST TITLE 11')
    expect(page).to have_content('TEST TITLE 10')
    expect(page).to have_content('TEST TITLE 9')
    expect(page).to have_content('TEST TITLE 8')
    expect(page).to have_content('TEST TITLE 7')
    expect(page).to have_content('TEST TITLE 6')
    expect(page).to have_content('TEST TITLE 5')
    expect(page).to_not have_content('TEST TITLE 4')
    expect(page).to_not have_content('TEST TITLE 3')
    expect(page).to_not have_content('TEST TITLE 2')
  end
end
