require 'rails_helper'

describe 'user can view all ideas' do
  scenario 'when user visits idea index page' do
    idea1, idea2 = create_list(:idea, 2)

    visit ideas_path

    expect(page).to have_content(idea1.title)
    expect(page).to have_content(idea2.title)

    click_on idea1.title

    expect(current_path).to eq(idea_path(idea1))
  end
end
