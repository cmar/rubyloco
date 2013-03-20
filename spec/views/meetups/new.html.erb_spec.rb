require 'spec_helper'

describe "meetups/new" do
  before(:each) do
    assign(:meetup, stub_model(Meetup,
      :start_at => "MyString",
      :location => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new meetup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", meetups_path, "post" do
      assert_select "input#meetup_start_at[name=?]", "meetup[start_at]"
      assert_select "input#meetup_location[name=?]", "meetup[location]"
      assert_select "input#meetup_description[name=?]", "meetup[description]"
    end
  end
end
