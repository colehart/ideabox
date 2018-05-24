# require 'rails_helper'
#
# describe 'Visitor' do
#   describe 'user can make new account' do
#     it 'can successfully create new account' do
#       visit '/'
#
#       click_on 'Sign Up to Be a User'
#
#       expect(current_path).to eq(new_user_path)
#
#       fill_in 'user[username]', with: 'funbucket13'
#       fill_in 'user[password]', with: 'test'
#
#       click_on 'Create User'
#
#       expect(current_path).to eq(user_path(User.last))
#       expect(page).to have_content("Welcome, #{User.last.username}")
#       expect(page).to have_link('Log Out')
#     end
#     it 'can does not allow duplicate user names' do
#       username = 'funbucket13'
#       User.create(username: username, password: 'secret')
#
#       visit new_user_path
#
#       fill_in 'user[username]', with: username
#       fill_in 'user[password]', with: 'test'
#
#       click_on 'Create User'
#
#       expect(current_path).to eq(users_path)
#     end
#   end
#   describe 'user can sign in' do
#     it 'can successfully log in' do
#       username = 'funbucket13'
#       password = 'test'
#       user = User.create(username: username, password: password)
#
#       visit '/'
#
#       click_on 'I already have an account'
#
#       expect(current_path).to eq(login_path)
#
#       fill_in 'username', with: user.username
#       fill_in 'password', with: user.password
#
#       click_on 'Click to Log In'
#
#       expect(current_path).to eq(user_path(user))
#       expect(page).to have_content("Welcome, #{user.username}")
#       expect(page).to have_link('Log Out')
#     end
#   end
# end
