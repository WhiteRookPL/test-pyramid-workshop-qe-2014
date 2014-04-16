require 'spec_helper'
require 'custom_list_helpers'

describe List do
  it { should have_many :tasks }
end

describe List do
  it { should belong_to :user }
end

describe List do
  before(:each) do
    @listName = "Test name"
    createList(@listName)
  end

  it "should be available when none of subsequent tasks are closed" do
    assertListAvailability(@listName, true)
  end

  it "should not be available when all of subsequent tasks are closed" do
    closeAllTasks(@listName)
    assertListAvailability(@listName, false)
  end

  it "should be available even when part of subsequent tasks are closed" do
    closeNotAllTasks(@listName)
    assertListAvailability(@listName, true)
  end

  after(:each) do
    @listName = nil
  end
end