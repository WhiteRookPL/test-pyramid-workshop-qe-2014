require 'spec_helper'

describe User do
  it { should have_many :lists }
end

# Zadanie UT_1.
#
# "Użytkownik może się zalogować na własne konto."
#
# Znów zadanie rozgrzewkowe - popraw jedną z literówek
# i zapoznaj się ze sposobem uruchamiania testów jednostkowych (plik 'run_ut.bat').

describe User do
  before(:each) do
    @user = User.create(:username => "krystian", :password => "password")
  end

  it "should be authenticated when password match" do
    expect(@user.will_authenticate?("passwrd")).to eq(true)
  end
end