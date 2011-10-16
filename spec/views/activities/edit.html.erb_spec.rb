require 'spec_helper'

describe "activities/edit.html.erb" do
  before(:each) do
    @activity = assign(:activity, stub_model(Activity,
      :new_record? => false,
      :name => "MyString"
    ))
  end

  it "renders the edit activity form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => activity_path(@activity), :method => "post" do
      assert_select "input#activity_name", :name => "activity[name]"
    end
  end
end
