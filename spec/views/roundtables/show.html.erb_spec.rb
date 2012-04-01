require 'spec_helper'

describe "roundtables/show" do
  before(:each) do
    @roundtable = assign(:roundtable, stub_model(Roundtable,
      :topic => "Topic",
      :number_of_attendees => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Topic/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
