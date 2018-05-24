require 'rails_helper'

describe 'user can see one idea' do
  it 'and its properties' do
    idea1 = create(:idea)

    visit idea_path(idea1)

    expect(page).to have_content(idea1.title)
    expect(page).to have_content(idea1.description)
  end
end
