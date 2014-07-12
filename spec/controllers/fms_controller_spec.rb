require 'rails_helper'

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

RSpec.describe FmsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Fm. As you add validations to Fm, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FmsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all fms as @fms" do
      fm = Fm.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:fms)).to eq([fm])
    end
  end

  describe "GET show" do
    it "assigns the requested fm as @fm" do
      fm = Fm.create! valid_attributes
      get :show, {:id => fm.to_param}, valid_session
      expect(assigns(:fm)).to eq(fm)
    end
  end

  describe "GET new" do
    it "assigns a new fm as @fm" do
      get :new, {}, valid_session
      expect(assigns(:fm)).to be_a_new(Fm)
    end
  end

  describe "GET edit" do
    it "assigns the requested fm as @fm" do
      fm = Fm.create! valid_attributes
      get :edit, {:id => fm.to_param}, valid_session
      expect(assigns(:fm)).to eq(fm)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Fm" do
        expect {
          post :create, {:fm => valid_attributes}, valid_session
        }.to change(Fm, :count).by(1)
      end

      it "assigns a newly created fm as @fm" do
        post :create, {:fm => valid_attributes}, valid_session
        expect(assigns(:fm)).to be_a(Fm)
        expect(assigns(:fm)).to be_persisted
      end

      it "redirects to the created fm" do
        post :create, {:fm => valid_attributes}, valid_session
        expect(response).to redirect_to(Fm.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved fm as @fm" do
        post :create, {:fm => invalid_attributes}, valid_session
        expect(assigns(:fm)).to be_a_new(Fm)
      end

      it "re-renders the 'new' template" do
        post :create, {:fm => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested fm" do
        fm = Fm.create! valid_attributes
        put :update, {:id => fm.to_param, :fm => new_attributes}, valid_session
        fm.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested fm as @fm" do
        fm = Fm.create! valid_attributes
        put :update, {:id => fm.to_param, :fm => valid_attributes}, valid_session
        expect(assigns(:fm)).to eq(fm)
      end

      it "redirects to the fm" do
        fm = Fm.create! valid_attributes
        put :update, {:id => fm.to_param, :fm => valid_attributes}, valid_session
        expect(response).to redirect_to(fm)
      end
    end

    describe "with invalid params" do
      it "assigns the fm as @fm" do
        fm = Fm.create! valid_attributes
        put :update, {:id => fm.to_param, :fm => invalid_attributes}, valid_session
        expect(assigns(:fm)).to eq(fm)
      end

      it "re-renders the 'edit' template" do
        fm = Fm.create! valid_attributes
        put :update, {:id => fm.to_param, :fm => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested fm" do
      fm = Fm.create! valid_attributes
      expect {
        delete :destroy, {:id => fm.to_param}, valid_session
      }.to change(Fm, :count).by(-1)
    end

    it "redirects to the fms list" do
      fm = Fm.create! valid_attributes
      delete :destroy, {:id => fm.to_param}, valid_session
      expect(response).to redirect_to(fms_url)
    end
  end

end