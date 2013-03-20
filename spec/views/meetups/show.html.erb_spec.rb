require 'spec_helper'

describe "meetups/show" do
  before(:each) do
    @meetup = assign(:meetup, stub_model(Meetup,
      :start_at => "Start At",
      :location => "Location",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Start At/)
    rendered.should match(/Location/)
    rendered.should match(/Description/)
  end
end
