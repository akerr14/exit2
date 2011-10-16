require 'spec_helper'

describe "days/new.html.erb" do
  before(:each) do
    assign(:day, stub_model(Day,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new day form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => days_path, :method => "post" do
      assert_select "input#day_name", :name => "day[name]"
    end
  end
end
