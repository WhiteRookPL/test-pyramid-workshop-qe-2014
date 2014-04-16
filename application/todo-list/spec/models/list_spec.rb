require 'spec_helper'
require 'custom_list_helpers'

describe List do
  before(:each) do
    @listName = "Test name"
    createList(@listName)
  end

  # Zadanie UT_3.
  #
  # "Lista jest zamknięta kiedy wszystkie jej elementy są zrobione."
  #
  # Zaimplementuj treść testu jednostkowego aby wypełnić wymaganie opisane
  # poniżej. W wykonaniu zadania pomoże Ci plik: ../custom_list_helpers.rb
  #
  # Przeanalizuj jego treść aby dobrze wykonać zadanie.

  it "should not be available when all of subsequent tasks are closed" do
    # TODO
  end
end