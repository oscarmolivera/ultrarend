require 'rails_helper'

describe 'navegar' do
  it 'home page' do
    visit(root_path)
    expect(page.status_code).to eq(200)
  end
end