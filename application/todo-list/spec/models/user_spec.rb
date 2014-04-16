require 'spec_helper'

describe User do
  it { should have_many :lists }
end

describe User do
  before(:each) do
    @user = User.create(:username => "krystian", :password => "password")
  end

  it "should be authenticated when password match" do
    expect(@user.will_authenticate?("password")).to eq(true)
  end

  it "should not be authenticated when does not match" do
    expect(@user.will_authenticate?("not a password")).to eq(false)
  end

  after(:each) do
    @user = nil
  end
end