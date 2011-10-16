require 'spec_helper'

describe HotelsController do

  def mock_hotel(stubs={})
    (@mock_hotel ||= mock_model(Hotel).as_null_object).tap do |hotel|
      hotel.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all hotels as @hotels" do
      Hotel.stub(:all) { [mock_hotel] }
      get :index
      assigns(:hotels).should eq([mock_hotel])
    end
  end

  describe "GET show" do
    it "assigns the requested hotel as @hotel" do
      Hotel.stub(:find).with("37") { mock_hotel }
      get :show, :id => "37"
      assigns(:hotel).should be(mock_hotel)
    end
  end

  describe "GET new" do
    it "assigns a new hotel as @hotel" do
      Hotel.stub(:new) { mock_hotel }
      get :new
      assigns(:hotel).should be(mock_hotel)
    end
  end

  describe "GET edit" do
    it "assigns the requested hotel as @hotel" do
      Hotel.stub(:find).with("37") { mock_hotel }
      get :edit, :id => "37"
      assigns(:hotel).should be(mock_hotel)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created hotel as @hotel" do
        Hotel.stub(:new).with({'these' => 'params'}) { mock_hotel(:save => true) }
        post :create, :hotel => {'these' => 'params'}
        assigns(:hotel).should be(mock_hotel)
      end

      it "redirects to the created hotel" do
        Hotel.stub(:new) { mock_hotel(:save => true) }
        post :create, :hotel => {}
        response.should redirect_to(hotel_url(mock_hotel))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved hotel as @hotel" do
        Hotel.stub(:new).with({'these' => 'params'}) { mock_hotel(:save => false) }
        post :create, :hotel => {'these' => 'params'}
        assigns(:hotel).should be(mock_hotel)
      end

      it "re-renders the 'new' template" do
        Hotel.stub(:new) { mock_hotel(:save => false) }
        post :create, :hotel => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested hotel" do
        Hotel.should_receive(:find).with("37") { mock_hotel }
        mock_hotel.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :hotel => {'these' => 'params'}
      end

      it "assigns the requested hotel as @hotel" do
        Hotel.stub(:find) { mock_hotel(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:hotel).should be(mock_hotel)
      end

      it "redirects to the hotel" do
        Hotel.stub(:find) { mock_hotel(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(hotel_url(mock_hotel))
      end
    end

    describe "with invalid params" do
      it "assigns the hotel as @hotel" do
        Hotel.stub(:find) { mock_hotel(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:hotel).should be(mock_hotel)
      end

      it "re-renders the 'edit' template" do
        Hotel.stub(:find) { mock_hotel(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested hotel" do
      Hotel.should_receive(:find).with("37") { mock_hotel }
      mock_hotel.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the hotels list" do
      Hotel.stub(:find) { mock_hotel }
      delete :destroy, :id => "1"
      response.should redirect_to(hotels_url)
    end
  end

end
