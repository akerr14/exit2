require 'spec_helper'

describe DaysController do

  def mock_day(stubs={})
    (@mock_day ||= mock_model(Day).as_null_object).tap do |day|
      day.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all days as @days" do
      Day.stub(:all) { [mock_day] }
      get :index
      assigns(:days).should eq([mock_day])
    end
  end

  describe "GET show" do
    it "assigns the requested day as @day" do
      Day.stub(:find).with("37") { mock_day }
      get :show, :id => "37"
      assigns(:day).should be(mock_day)
    end
  end

  describe "GET new" do
    it "assigns a new day as @day" do
      Day.stub(:new) { mock_day }
      get :new
      assigns(:day).should be(mock_day)
    end
  end

  describe "GET edit" do
    it "assigns the requested day as @day" do
      Day.stub(:find).with("37") { mock_day }
      get :edit, :id => "37"
      assigns(:day).should be(mock_day)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created day as @day" do
        Day.stub(:new).with({'these' => 'params'}) { mock_day(:save => true) }
        post :create, :day => {'these' => 'params'}
        assigns(:day).should be(mock_day)
      end

      it "redirects to the created day" do
        Day.stub(:new) { mock_day(:save => true) }
        post :create, :day => {}
        response.should redirect_to(day_url(mock_day))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved day as @day" do
        Day.stub(:new).with({'these' => 'params'}) { mock_day(:save => false) }
        post :create, :day => {'these' => 'params'}
        assigns(:day).should be(mock_day)
      end

      it "re-renders the 'new' template" do
        Day.stub(:new) { mock_day(:save => false) }
        post :create, :day => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested day" do
        Day.should_receive(:find).with("37") { mock_day }
        mock_day.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :day => {'these' => 'params'}
      end

      it "assigns the requested day as @day" do
        Day.stub(:find) { mock_day(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:day).should be(mock_day)
      end

      it "redirects to the day" do
        Day.stub(:find) { mock_day(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(day_url(mock_day))
      end
    end

    describe "with invalid params" do
      it "assigns the day as @day" do
        Day.stub(:find) { mock_day(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:day).should be(mock_day)
      end

      it "re-renders the 'edit' template" do
        Day.stub(:find) { mock_day(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested day" do
      Day.should_receive(:find).with("37") { mock_day }
      mock_day.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the days list" do
      Day.stub(:find) { mock_day }
      delete :destroy, :id => "1"
      response.should redirect_to(days_url)
    end
  end

end
