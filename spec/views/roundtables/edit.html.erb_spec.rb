require 'spec_helper'

describe "roundtables/edit" do
  before(:each) do
    @roundtable = assign(:roundtable, stub_model(Roundtable,
      :topic => "MyString",
      :number_of_attendees => 1
    ))
  end

  it "renders the edit roundtable form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => roundtables_path(@roundtable), :method => "post" do
      assert_select "input#roundtable_topic", :name => "roundtable[topic]"
      assert_select "input#roundtable_number_of_attendees", :name => "roundtable[number_of_attendees]"
    end
  end
end
