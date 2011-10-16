require 'spec_helper'

describe "days/show.html.erb" do
  before(:each) do
    @day = assign(:day, stub_model(Day,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
