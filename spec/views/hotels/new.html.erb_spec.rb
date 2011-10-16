require 'spec_helper'

describe "hotels/new.html.erb" do
  before(:each) do
    assign(:hotel, stub_model(Hotel,
      :city_id => 1,
      :area_id => 1,
      :name => "MyString",
      :style => "MyString",
      :short_desc => "MyString",
      :desc => "MyText",
      :address => "MyString",
      :map_id => 1,
      :phone => "MyString",
      :email => "MyString",
      :web => "MyString",
      :rooms => "MyString",
      :price => 1,
      :inclusions => "MyString",
      :check_in => "MyString",
      :amenities => "MyText",
      :facilities => "MyText",
      :restaurants => "MyText",
      :bars => "MyString",
      :kids => "MyString",
      :ideal_for => "MyText",
      :think_twice => "MyText",
      :sort => 1,
      :release_id => 1
    ).as_new_record)
  end

  it "renders new hotel form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => hotels_path, :method => "post" do
      assert_select "input#hotel_city_id", :name => "hotel[city_id]"
      assert_select "input#hotel_area_id", :name => "hotel[area_id]"
      assert_select "input#hotel_name", :name => "hotel[name]"
      assert_select "input#hotel_style", :name => "hotel[style]"
      assert_select "input#hotel_short_desc", :name => "hotel[short_desc]"
      assert_select "textarea#hotel_desc", :name => "hotel[desc]"
      assert_select "input#hotel_address", :name => "hotel[address]"
      assert_select "input#hotel_map_id", :name => "hotel[map_id]"
      assert_select "input#hotel_phone", :name => "hotel[phone]"
      assert_select "input#hotel_email", :name => "hotel[email]"
      assert_select "input#hotel_web", :name => "hotel[web]"
      assert_select "input#hotel_rooms", :name => "hotel[rooms]"
      assert_select "input#hotel_price", :name => "hotel[price]"
      assert_select "input#hotel_inclusions", :name => "hotel[inclusions]"
      assert_select "input#hotel_check_in", :name => "hotel[check_in]"
      assert_select "textarea#hotel_amenities", :name => "hotel[amenities]"
      assert_select "textarea#hotel_facilities", :name => "hotel[facilities]"
      assert_select "textarea#hotel_restaurants", :name => "hotel[restaurants]"
      assert_select "input#hotel_bars", :name => "hotel[bars]"
      assert_select "input#hotel_kids", :name => "hotel[kids]"
      assert_select "textarea#hotel_ideal_for", :name => "hotel[ideal_for]"
      assert_select "textarea#hotel_think_twice", :name => "hotel[think_twice]"
      assert_select "input#hotel_sort", :name => "hotel[sort]"
      assert_select "input#hotel_release_id", :name => "hotel[release_id]"
    end
  end
end
