require 'spec_helper'

describe "roundtables/new" do
  before(:each) do
    assign(:roundtable, stub_model(Roundtable,
      :topic => "MyString",
      :number_of_attendees => 1
    ).as_new_record)
  end

  it "renders new roundtable form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => roundtables_path, :method => "post" do
      assert_select "input#roundtable_topic", :name => "roundtable[topic]"
      assert_select "input#roundtable_number_of_attendees", :name => "roundtable[number_of_attendees]"
    end
  end
end
