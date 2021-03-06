require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe IdiomasController do

  def mock_idioma(stubs={})
    @mock_idioma ||= mock_model(Idioma, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all idiomas as @idiomas" do
      Idioma.stub(:all) { [mock_idioma] }
      get :index
      assigns(:idiomas).should eq([mock_idioma])
    end
  end

  describe "GET show" do
    it "assigns the requested idioma as @idioma" do
      Idioma.stub(:find).with("37") { mock_idioma }
      get :show, :id => "37"
      assigns(:idioma).should be(mock_idioma)
    end
  end

  describe "GET new" do
    it "assigns a new idioma as @idioma" do
      Idioma.stub(:new) { mock_idioma }
      get :new
      assigns(:idioma).should be(mock_idioma)
    end
  end

  describe "GET edit" do
    it "assigns the requested idioma as @idioma" do
      Idioma.stub(:find).with("37") { mock_idioma }
      get :edit, :id => "37"
      assigns(:idioma).should be(mock_idioma)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created idioma as @idioma" do
        Idioma.stub(:new).with({'these' => 'params'}) { mock_idioma(:save => true) }
        post :create, :idioma => {'these' => 'params'}
        assigns(:idioma).should be(mock_idioma)
      end

      it "redirects to the created idioma" do
        Idioma.stub(:new) { mock_idioma(:save => true) }
        post :create, :idioma => {}
        response.should redirect_to(idioma_url(mock_idioma))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved idioma as @idioma" do
        Idioma.stub(:new).with({'these' => 'params'}) { mock_idioma(:save => false) }
        post :create, :idioma => {'these' => 'params'}
        assigns(:idioma).should be(mock_idioma)
      end

      it "re-renders the 'new' template" do
        Idioma.stub(:new) { mock_idioma(:save => false) }
        post :create, :idioma => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested idioma" do
        Idioma.stub(:find).with("37") { mock_idioma }
        mock_idioma.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :idioma => {'these' => 'params'}
      end

      it "assigns the requested idioma as @idioma" do
        Idioma.stub(:find) { mock_idioma(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:idioma).should be(mock_idioma)
      end

      it "redirects to the idioma" do
        Idioma.stub(:find) { mock_idioma(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(idioma_url(mock_idioma))
      end
    end

    describe "with invalid params" do
      it "assigns the idioma as @idioma" do
        Idioma.stub(:find) { mock_idioma(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:idioma).should be(mock_idioma)
      end

      it "re-renders the 'edit' template" do
        Idioma.stub(:find) { mock_idioma(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested idioma" do
      Idioma.stub(:find).with("37") { mock_idioma }
      mock_idioma.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the idiomas list" do
      Idioma.stub(:find) { mock_idioma }
      delete :destroy, :id => "1"
      response.should redirect_to(idiomas_url)
    end
  end

end
