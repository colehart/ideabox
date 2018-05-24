require 'rails_helper'

describe 'User deletes an idea' do
  scenario 'when clicking on index page delete button' do
    idea1 = create(:idea)

    visit ideas_path

    click_on 'Delete'

    expect(page).to_not have_content(idea1.title)
  end
  scenario 'when clicking on show page delete button' do
    idea1 = create(:idea)

    visit idea_path(idea1)

    click_on 'Delete'

    expect(current_path).to eq(ideas_path)
    expect(page).to_not have_content(idea1.title)
  end
end
