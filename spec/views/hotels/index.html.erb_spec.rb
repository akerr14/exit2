require 'spec_helper'

describe "hotels/index.html.erb" do
  before(:each) do
    assign(:hotels, [
      stub_model(Hotel,
        :city_id => 1,
        :area_id => 1,
        :name => "Name",
        :style => "Style",
        :short_desc => "Short Desc",
        :desc => "MyText",
        :address => "Address",
        :map_id => 1,
        :phone => "Phone",
        :email => "Email",
        :web => "Web",
        :rooms => "Rooms",
        :price => 1,
        :inclusions => "Inclusions",
        :check_in => "Check In",
        :amenities => "MyText",
        :facilities => "MyText",
        :restaurants => "MyText",
        :bars => "Bars",
        :kids => "Kids",
        :ideal_for => "MyText",
        :think_twice => "MyText",
        :sort => 1,
        :release_id => 1
      ),
      stub_model(Hotel,
        :city_id => 1,
        :area_id => 1,
        :name => "Name",
        :style => "Style",
        :short_desc => "Short Desc",
        :desc => "MyText",
        :address => "Address",
        :map_id => 1,
        :phone => "Phone",
        :email => "Email",
        :web => "Web",
        :rooms => "Rooms",
        :price => 1,
        :inclusions => "Inclusions",
        :check_in => "Check In",
        :amenities => "MyText",
        :facilities => "MyText",
        :restaurants => "MyText",
        :bars => "Bars",
        :kids => "Kids",
        :ideal_for => "MyText",
        :think_twice => "MyText",
        :sort => 1,
        :release_id => 1
      )
    ])
  end

  it "renders a list of hotels" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Style".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Short Desc".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Web".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Rooms".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Inclusions".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Check In".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Bars".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Kids".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
