require 'rails_helper'

describe 'User creates a new idea' do
  context 'the submitted data is valid' do
    it 'they enter data to create a new idea' do
      new_title = 'New Title'
      new_description = 'New Description'

      visit ideas_path

      click_on 'Create a New Idea'

      fill_in 'Title', with: new_title
      fill_in 'Description', with: new_description

      click_on 'Save Idea'

      expect(current_path).to eq(idea_path(Idea.last))
      expect(page).to have_content new_title
      expect(page).to have_content new_description
    end
  end
  context 'the submitted data is invalid' do
    scenario 'they see an error message' do
      new_description = 'New Description'
      flash = "Title can't be blank"

      visit ideas_path
      click_on 'Create a New Idea'

      fill_in 'Description', with: new_description
      click_on 'Save Idea'

      expect(page).to have_content(flash)
    end
  end
end
