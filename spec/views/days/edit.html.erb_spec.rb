require 'spec_helper'

describe "days/edit.html.erb" do
  before(:each) do
    @day = assign(:day, stub_model(Day,
      :new_record? => false,
      :name => "MyString"
    ))
  end

  it "renders the edit day form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => day_path(@day), :method => "post" do
      assert_select "input#day_name", :name => "day[name]"
    end
  end
end
