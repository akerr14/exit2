require 'spec_helper'

describe "restaurants/index.html.erb" do
  before(:each) do
    assign(:restaurants, [
      stub_model(Restaurant,
        :city_id => 1,
        :name => "Name",
        :short_desc => "Short Desc",
        :desc => "MyText",
        :address => "Address",
        :area_id => 1,
        :map_id => 1,
        :phone => "Phone",
        :email => "Email",
        :web => "Web",
        :cuisine_id => 1,
        :rating => 1,
        :price => 1,
        :hours => "Hours",
        :reservations_id => 1,
        :wine => "Wine",
        :seats => "Seats",
        :kid_friendly => "Kid Friendly",
        :vegetarian => "Vegetarian",
        :sort => 1,
        :release_id => 1
      ),
      stub_model(Restaurant,
        :city_id => 1,
        :name => "Name",
        :short_desc => "Short Desc",
        :desc => "MyText",
        :address => "Address",
        :area_id => 1,
        :map_id => 1,
        :phone => "Phone",
        :email => "Email",
        :web => "Web",
        :cuisine_id => 1,
        :rating => 1,
        :price => 1,
        :hours => "Hours",
        :reservations_id => 1,
        :wine => "Wine",
        :seats => "Seats",
        :kid_friendly => "Kid Friendly",
        :vegetarian => "Vegetarian",
        :sort => 1,
        :release_id => 1
      )
    ])
  end

  it "renders a list of restaurants" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Short Desc".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Web".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Hours".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Wine".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Seats".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Kid Friendly".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Vegetarian".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
