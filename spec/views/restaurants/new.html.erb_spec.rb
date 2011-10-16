require 'spec_helper'

describe "restaurants/new.html.erb" do
  before(:each) do
    assign(:restaurant, stub_model(Restaurant,
      :city_id => 1,
      :name => "MyString",
      :short_desc => "MyString",
      :desc => "MyText",
      :address => "MyString",
      :area_id => 1,
      :map_id => 1,
      :phone => "MyString",
      :email => "MyString",
      :web => "MyString",
      :cuisine_id => 1,
      :rating => 1,
      :price => 1,
      :hours => "MyString",
      :reservations_id => 1,
      :wine => "MyString",
      :seats => "MyString",
      :kid_friendly => "MyString",
      :vegetarian => "MyString",
      :sort => 1,
      :release_id => 1
    ).as_new_record)
  end

  it "renders new restaurant form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => restaurants_path, :method => "post" do
      assert_select "input#restaurant_city_id", :name => "restaurant[city_id]"
      assert_select "input#restaurant_name", :name => "restaurant[name]"
      assert_select "input#restaurant_short_desc", :name => "restaurant[short_desc]"
      assert_select "textarea#restaurant_desc", :name => "restaurant[desc]"
      assert_select "input#restaurant_address", :name => "restaurant[address]"
      assert_select "input#restaurant_area_id", :name => "restaurant[area_id]"
      assert_select "input#restaurant_map_id", :name => "restaurant[map_id]"
      assert_select "input#restaurant_phone", :name => "restaurant[phone]"
      assert_select "input#restaurant_email", :name => "restaurant[email]"
      assert_select "input#restaurant_web", :name => "restaurant[web]"
      assert_select "input#restaurant_cuisine_id", :name => "restaurant[cuisine_id]"
      assert_select "input#restaurant_rating", :name => "restaurant[rating]"
      assert_select "input#restaurant_price", :name => "restaurant[price]"
      assert_select "input#restaurant_hours", :name => "restaurant[hours]"
      assert_select "input#restaurant_reservations_id", :name => "restaurant[reservations_id]"
      assert_select "input#restaurant_wine", :name => "restaurant[wine]"
      assert_select "input#restaurant_seats", :name => "restaurant[seats]"
      assert_select "input#restaurant_kid_friendly", :name => "restaurant[kid_friendly]"
      assert_select "input#restaurant_vegetarian", :name => "restaurant[vegetarian]"
      assert_select "input#restaurant_sort", :name => "restaurant[sort]"
      assert_select "input#restaurant_release_id", :name => "restaurant[release_id]"
    end
  end
end
