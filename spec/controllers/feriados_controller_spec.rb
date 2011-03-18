require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe FeriadosController do

  def mock_feriado(stubs={})
    @mock_feriado ||= mock_model(Feriado, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all feriados as @feriados" do
      Feriado.stub(:all) { [mock_feriado] }
      get :index
      assigns(:feriados).should eq([mock_feriado])
    end
  end

  describe "GET show" do
    it "assigns the requested feriado as @feriado" do
      Feriado.stub(:find).with("37") { mock_feriado }
      get :show, :id => "37"
      assigns(:feriado).should be(mock_feriado)
    end
  end

  describe "GET new" do
    it "assigns a new feriado as @feriado" do
      Feriado.stub(:new) { mock_feriado }
      get :new
      assigns(:feriado).should be(mock_feriado)
    end
  end

  describe "GET edit" do
    it "assigns the requested feriado as @feriado" do
      Feriado.stub(:find).with("37") { mock_feriado }
      get :edit, :id => "37"
      assigns(:feriado).should be(mock_feriado)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created feriado as @feriado" do
        Feriado.stub(:new).with({'these' => 'params'}) { mock_feriado(:save => true) }
        post :create, :feriado => {'these' => 'params'}
        assigns(:feriado).should be(mock_feriado)
      end

      it "redirects to the created feriado" do
        Feriado.stub(:new) { mock_feriado(:save => true) }
        post :create, :feriado => {}
        response.should redirect_to(feriado_url(mock_feriado))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved feriado as @feriado" do
        Feriado.stub(:new).with({'these' => 'params'}) { mock_feriado(:save => false) }
        post :create, :feriado => {'these' => 'params'}
        assigns(:feriado).should be(mock_feriado)
      end

      it "re-renders the 'new' template" do
        Feriado.stub(:new) { mock_feriado(:save => false) }
        post :create, :feriado => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested feriado" do
        Feriado.stub(:find).with("37") { mock_feriado }
        mock_feriado.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :feriado => {'these' => 'params'}
      end

      it "assigns the requested feriado as @feriado" do
        Feriado.stub(:find) { mock_feriado(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:feriado).should be(mock_feriado)
      end

      it "redirects to the feriado" do
        Feriado.stub(:find) { mock_feriado(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(feriado_url(mock_feriado))
      end
    end

    describe "with invalid params" do
      it "assigns the feriado as @feriado" do
        Feriado.stub(:find) { mock_feriado(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:feriado).should be(mock_feriado)
      end

      it "re-renders the 'edit' template" do
        Feriado.stub(:find) { mock_feriado(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested feriado" do
      Feriado.stub(:find).with("37") { mock_feriado }
      mock_feriado.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the feriados list" do
      Feriado.stub(:find) { mock_feriado }
      delete :destroy, :id => "1"
      response.should redirect_to(feriados_url)
    end
  end

end