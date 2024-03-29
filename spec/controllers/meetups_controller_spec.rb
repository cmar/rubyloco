require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe MeetupsController do

  # This should return the minimal set of attributes required to create a valid
  # Meetup. As you add validations to Meetup, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "start_at" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MeetupsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all meetups as @meetups" do
      meetup = Meetup.create! valid_attributes
      get :index, {}, valid_session
      assigns(:meetups).should eq([meetup])
    end
  end

  describe "GET show" do
    it "assigns the requested meetup as @meetup" do
      meetup = Meetup.create! valid_attributes
      get :show, {:id => meetup.to_param}, valid_session
      assigns(:meetup).should eq(meetup)
    end
  end

  describe "GET new" do
    it "assigns a new meetup as @meetup" do
      get :new, {}, valid_session
      assigns(:meetup).should be_a_new(Meetup)
    end
  end

  describe "GET edit" do
    it "assigns the requested meetup as @meetup" do
      meetup = Meetup.create! valid_attributes
      get :edit, {:id => meetup.to_param}, valid_session
      assigns(:meetup).should eq(meetup)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Meetup" do
        expect {
          post :create, {:meetup => valid_attributes}, valid_session
        }.to change(Meetup, :count).by(1)
      end

      it "assigns a newly created meetup as @meetup" do
        post :create, {:meetup => valid_attributes}, valid_session
        assigns(:meetup).should be_a(Meetup)
        assigns(:meetup).should be_persisted
      end

      it "redirects to the created meetup" do
        post :create, {:meetup => valid_attributes}, valid_session
        response.should redirect_to(Meetup.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved meetup as @meetup" do
        # Trigger the behavior that occurs when invalid params are submitted
        Meetup.any_instance.stub(:save).and_return(false)
        post :create, {:meetup => { "start_at" => "invalid value" }}, valid_session
        assigns(:meetup).should be_a_new(Meetup)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Meetup.any_instance.stub(:save).and_return(false)
        post :create, {:meetup => { "start_at" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested meetup" do
        meetup = Meetup.create! valid_attributes
        # Assuming there are no other meetups in the database, this
        # specifies that the Meetup created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Meetup.any_instance.should_receive(:update_attributes).with({ "start_at" => "MyString" })
        put :update, {:id => meetup.to_param, :meetup => { "start_at" => "MyString" }}, valid_session
      end

      it "assigns the requested meetup as @meetup" do
        meetup = Meetup.create! valid_attributes
        put :update, {:id => meetup.to_param, :meetup => valid_attributes}, valid_session
        assigns(:meetup).should eq(meetup)
      end

      it "redirects to the meetup" do
        meetup = Meetup.create! valid_attributes
        put :update, {:id => meetup.to_param, :meetup => valid_attributes}, valid_session
        response.should redirect_to(meetup)
      end
    end

    describe "with invalid params" do
      it "assigns the meetup as @meetup" do
        meetup = Meetup.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Meetup.any_instance.stub(:save).and_return(false)
        put :update, {:id => meetup.to_param, :meetup => { "start_at" => "invalid value" }}, valid_session
        assigns(:meetup).should eq(meetup)
      end

      it "re-renders the 'edit' template" do
        meetup = Meetup.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Meetup.any_instance.stub(:save).and_return(false)
        put :update, {:id => meetup.to_param, :meetup => { "start_at" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested meetup" do
      meetup = Meetup.create! valid_attributes
      expect {
        delete :destroy, {:id => meetup.to_param}, valid_session
      }.to change(Meetup, :count).by(-1)
    end

    it "redirects to the meetups list" do
      meetup = Meetup.create! valid_attributes
      delete :destroy, {:id => meetup.to_param}, valid_session
      response.should redirect_to(meetups_url)
    end
  end

end
