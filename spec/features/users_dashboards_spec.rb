require 'rails_helper'
require_relative "../support/devise"

describe 'users dashboard ' do
  let(:user) {FactoryBot.create(:trabajador)}
  before do
    company = FactoryBot.create(:company)
    branch = FactoryBot.create(:branch_office)
    department = FactoryBot.create(:department)
  end
  it 'cannot be reached by a non logon user' do
    
    visit dashboards_index_path
    expect(current_path).to eq(new_user_session_path)
  end

  it 'has a logout button' do
    login_as(user, scope: :user)
    visit dashboards_index_path
    expect(page).to have_content(/Sign out/)
  end

  it 'has the email of the user in the screen' do
    login_as(user, scope: :user)
    email = user.email
    visit dashboards_index_path
    expect(page).to have_content(email)
  end

  it 'has a button title for New Expense a user' do
    login_as(user, scope: :user)
    visit dashboards_index_path
    expect(page).to have_content(/New Expense/)
  end

  it 'has a button title for pending process for AuxContable user' do
    auxc = FactoryBot.create(:auxcontable)
    login_as(auxc, scope: :user)
    visit dashboards_index_path
    expect(page).to have_content(/Pending Process/)
  end
end