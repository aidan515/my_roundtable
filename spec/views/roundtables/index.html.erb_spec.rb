require 'spec_helper'

describe "roundtables/index" do
  before(:each) do
    assign(:roundtables, [
      stub_model(Roundtable,
        :topic => "Topic",
        :number_of_attendees => 1
      ),
      stub_model(Roundtable,
        :topic => "Topic",
        :number_of_attendees => 1
      )
    ])
  end

  it "renders a list of roundtables" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Topic".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
