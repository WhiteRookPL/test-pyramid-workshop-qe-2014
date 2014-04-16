require 'spec_helper'

describe ListRepository do
  before(:each) do
    @repository = ListRepository.new

    # TODO: Wypełnij poprawnie repozytorium, aby test poprawnie przechodził.
  end

  # Zadanie UT_2.
  #
  # "Lista zamknięta jest niedostępna dla użytkownika."
  #
  # Wypełnij poprawnie inicjalizację testów, tak aby spełnić
  # wymagania poniższego testu.

  it "not available lists should not be retrieved from repository" do
    expect(@repository.all.count).to eq(1)
    expect(@repository.all.first.name).to eq("Opened List")
  end
end