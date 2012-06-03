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

describe ReportedDangersController do

  # This should return the minimal set of attributes required to create a valid
  # ReportedDanger. As you add validations to ReportedDanger, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ReportedDangersController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all reported_dangers as @reported_dangers" do
      reported_danger = ReportedDanger.create! valid_attributes
      get :index, {}, valid_session
      assigns(:reported_dangers).should eq([reported_danger])
    end
  end

  describe "GET show" do
    it "assigns the requested reported_danger as @reported_danger" do
      reported_danger = ReportedDanger.create! valid_attributes
      get :show, {:id => reported_danger.to_param}, valid_session
      assigns(:reported_danger).should eq(reported_danger)
    end
  end

  describe "GET new" do
    it "assigns a new reported_danger as @reported_danger" do
      get :new, {}, valid_session
      assigns(:reported_danger).should be_a_new(ReportedDanger)
    end
  end

  describe "GET edit" do
    it "assigns the requested reported_danger as @reported_danger" do
      reported_danger = ReportedDanger.create! valid_attributes
      get :edit, {:id => reported_danger.to_param}, valid_session
      assigns(:reported_danger).should eq(reported_danger)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ReportedDanger" do
        expect {
          post :create, {:reported_danger => valid_attributes}, valid_session
        }.to change(ReportedDanger, :count).by(1)
      end

      it "assigns a newly created reported_danger as @reported_danger" do
        post :create, {:reported_danger => valid_attributes}, valid_session
        assigns(:reported_danger).should be_a(ReportedDanger)
        assigns(:reported_danger).should be_persisted
      end

      it "redirects to the created reported_danger" do
        post :create, {:reported_danger => valid_attributes}, valid_session
        response.should redirect_to(ReportedDanger.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved reported_danger as @reported_danger" do
        # Trigger the behavior that occurs when invalid params are submitted
        ReportedDanger.any_instance.stub(:save).and_return(false)
        post :create, {:reported_danger => {}}, valid_session
        assigns(:reported_danger).should be_a_new(ReportedDanger)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ReportedDanger.any_instance.stub(:save).and_return(false)
        post :create, {:reported_danger => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested reported_danger" do
        reported_danger = ReportedDanger.create! valid_attributes
        # Assuming there are no other reported_dangers in the database, this
        # specifies that the ReportedDanger created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ReportedDanger.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => reported_danger.to_param, :reported_danger => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested reported_danger as @reported_danger" do
        reported_danger = ReportedDanger.create! valid_attributes
        put :update, {:id => reported_danger.to_param, :reported_danger => valid_attributes}, valid_session
        assigns(:reported_danger).should eq(reported_danger)
      end

      it "redirects to the reported_danger" do
        reported_danger = ReportedDanger.create! valid_attributes
        put :update, {:id => reported_danger.to_param, :reported_danger => valid_attributes}, valid_session
        response.should redirect_to(reported_danger)
      end
    end

    describe "with invalid params" do
      it "assigns the reported_danger as @reported_danger" do
        reported_danger = ReportedDanger.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ReportedDanger.any_instance.stub(:save).and_return(false)
        put :update, {:id => reported_danger.to_param, :reported_danger => {}}, valid_session
        assigns(:reported_danger).should eq(reported_danger)
      end

      it "re-renders the 'edit' template" do
        reported_danger = ReportedDanger.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ReportedDanger.any_instance.stub(:save).and_return(false)
        put :update, {:id => reported_danger.to_param, :reported_danger => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested reported_danger" do
      reported_danger = ReportedDanger.create! valid_attributes
      expect {
        delete :destroy, {:id => reported_danger.to_param}, valid_session
      }.to change(ReportedDanger, :count).by(-1)
    end

    it "redirects to the reported_dangers list" do
      reported_danger = ReportedDanger.create! valid_attributes
      delete :destroy, {:id => reported_danger.to_param}, valid_session
      response.should redirect_to(reported_dangers_url)
    end
  end

end