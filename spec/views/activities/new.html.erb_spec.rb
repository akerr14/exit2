require 'spec_helper'

describe "activities/new.html.erb" do
  before(:each) do
    assign(:activity, stub_model(Activity,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new activity form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => activities_path, :method => "post" do
      assert_select "input#activity_name", :name => "activity[name]"
    end
  end
end
