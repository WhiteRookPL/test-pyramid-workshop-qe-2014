require 'spec_helper'

#
# Zadanie UT_3:
#
# Uzupełnij kod ustawiający warunki początkowe testu
# oraz same wartości w asercjach zawartych już wewnątrz konkretnej
# implementacji.
#
# Przed implementacją i dobraniem wartości pomoże Ci analiza kodu w
# pliku `app/models/list_repository.rb`.
#
# Baw się dobrze!
# W razie problemów - nie krępuj się, zapytaj. :)
#

describe ListRepository do
  before(:each) do
    @repository = ListRepository.new

    opened = List.create(:name => "Opened List")
    closed = List.create(:name => "Closed List")

    # TODO: Uzupełnij kod ustawiający warunki początkowe dla
    # poniższego testu. Zauważ, że dotyczy to implementacji
    # zawartej w klasie `app/models/list_repository.rb`.
  end

  it "not available lists should not be retrieved from repository" do
    # TODO: Uzupełnij poprawne wartości w asercjach:
    expect(@repository.all.count).to eq(???)
    expect(@repository.all.first.name).to eq(???)
  end

  after(:each) do
    @repository = nil
  end
end
