#
# Zadanie UT_2:
#
# W tym zadaniu zapoznamy się z asercjami w RSpec.
# Dokładny opis znajdziesz poniżej - tylko w tym miejscu, będziemy to modyfikować.
#
# Baw się dobrze!
# W razie problemów - nie krępuj się, zapytaj. :)
#

require 'spec_helper'

describe User do
  it { should have_many :lists }
end

describe User do
  before(:each) do
    @user = User.create(:username => "krystian", :password => "password")
  end

  it "should be authenticated when password match" do
    # TODO: Właśnie tu powinno się znaleźć wyrażenie weryfikujące, że dla poprawnego hasła użytkownika
    #       zostanie on zautoryzowany poprawnie.
  end

  it "should not be authenticated when does not match" do
    expect(@user.will_authenticate?("not a password")).to eq(false)
  end

  after(:each) do
    @user = nil
  end
end