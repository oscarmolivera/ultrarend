require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = Trabajador.create(
      email: "sp-a@test.cl", 
      first_name:"Miguel", 
      last_name:"ACEVEDO", 
      password: "Auser.123", 
      password_confirmation: "Auser.123", 
      departments_id: 1,
      branch_offices_id: 2
    )
  end

  describe "creation" do

    it "can be created" do
      expect(@user).to be_valid
    end

  end

  describe 'validations' do
    
    it "cannot be created without first_name, last_name" do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to_not be_valid
    end

    it "cannot be created without a valid password" do
      @user.password = nil
      expect(@user).to_not be_valid
    end

    it "cannot be created without a Department ID" do
      @user.departments_id = nil
      expect(@user).to_not be_valid
    end

    it "cannot be created without a Branch Office ID" do
      @user.branch_offices_id = nil
      expect(@user).to_not be_valid
    end
    
  end
end
