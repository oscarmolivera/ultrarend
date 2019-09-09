require 'rails_helper'
describe 'users dashboard ' do
  it 'cannot be reached by a non logon user' do
    visit dashboards_index_path
    expect(current_path).to eq(new_user_session_path)
  end
end