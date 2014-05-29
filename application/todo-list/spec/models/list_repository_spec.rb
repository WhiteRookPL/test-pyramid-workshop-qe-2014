#
# Zadanie UT_3:
#
# W ostatniej fazie tego ćwiczenia poznamy mechanizm 'before'/'after',
# który bardzo ładnie wszystko spaja. W każdym 'before' przygotowujemy
# serię zdarzeń która musi zajść przed testem, w 'after' sprzątamy
# po Naszych ustawieniach lub usuwamy wyniki testów.
#
# Aby poprawnie wypełnić sekcję podążaj za wskazówkami w kodzie, albo
# sięgnij do ściągawki. Interesujące pliki to:
#   - 'app/models/list.rb'
#   - 'app/models/list_repository_spec.rb'
#
# Baw się dobrze!
# W razie problemów - nie krępuj się, zapytaj. :)
#

require 'spec_helper'

describe ListRepository do
  before(:each) do
    @repository = ListRepository.new

    opened = List.create(:name => "Opened List")
    closed = List.create(:name => "Closed List")
    # TODO: Zamknij listę!

    # TODO: Dodaj obie listy do repozytorium.
  end

  it "not available lists should not be retrieved from repository" do
    # TODO: Zastąp serię pytajników konkretną wartością.

    expect(@repository.all.count).to eq(???)
    expect(@repository.all.first.name).to eq(???)
  end

  after(:each) do
    @repository = nil
  end
end