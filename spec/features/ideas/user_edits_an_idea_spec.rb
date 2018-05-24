require 'rails_helper'

describe 'user can edit an idea' do
  scenario 'when clicking on index page edit button' do
    idea1 = create(:idea)
    new_title = FFaker::Book.unique.title

    visit ideas_path

    click_on 'Edit'

    expect(current_path).to eq(edit_idea_path(idea1))

    fill_in 'Title', with: new_title

    click_on 'Save Idea'

    expect(current_path).to eq(idea_path(idea1))
    expect(page).to have_content(new_title)
  end
  scenario 'when clicking on show page edit button' do
    idea1 = create(:idea)
    new_title = FFaker::Book.unique.title

    visit idea_path(idea1)

    click_on 'Edit'

    expect(current_path).to eq(edit_idea_path(idea1))

    fill_in 'Title', with: new_title

    click_on 'Save Idea'

    expect(current_path).to eq(idea_path(idea1))
    expect(page).to have_content(new_title)
  end
end
