require 'spec_helper'

describe "meetups/index" do
  before(:each) do
    assign(:meetups, [
      stub_model(Meetup,
        :start_at => "Start At",
        :location => "Location",
        :description => "Description"
      ),
      stub_model(Meetup,
        :start_at => "Start At",
        :location => "Location",
        :description => "Description"
      )
    ])
  end

  it "renders a list of meetups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Start At".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
