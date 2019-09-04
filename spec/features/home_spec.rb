require 'rails_helper'

describe 'navegar' do
  it 'home page' do
    visit(root_path)
    expect(page.status_code).to eq(200)
  end

  it 'can access the dashboard page' do
    visit(root_path)
    expect{click_on "submit"}.to eq(dashboards_index_path)
  end
end