require 'spec_helper'

describe "days/index.html.erb" do
  before(:each) do
    assign(:days, [
      stub_model(Day,
        :name => "Name"
      ),
      stub_model(Day,
        :name => "Name"
      )
    ])
  end

  it "renders a list of days" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
