require 'rails_helper'

RSpec.describe TermsController, type: :request do

  let(:user) { create(:user) }
  let!(:term) { create(:term) }

  before do
    sign_in user
  end

  describe "GET #index" do
    it "returns a success response and assigns @terms" do
      get :index
      expect(response).to have_http_status(:success)
      expect(assigns(:terms)).to eq([term])
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      get :show, params: { id: term.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new
      expect(response).to have_http_status(:success)
      expect(assigns(:term)).to be_a_new(Term)
    end
  end

  describe "POST #create" do
    context "with valid attributes" do
      it "creates a new term and redirects" do
        expect {
          post :create, params: { term: { name: "Spring 2025" } }
        }.to change(Term, :count).by(1)
        expect(response).to redirect_to(Term.last)
        expect(flash[:notice]).to eq('Term created successfully.')
      end
    end

    context "with invalid attributes" do
      it "renders the new template" do
        post :create, params: { term: { name: "" } }
        expect(response).to render_template(:new)
      end
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      get :edit, params: { id: term.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "PATCH #update" do
    context "with valid attributes" do
      it "updates the term and redirects" do
        patch :update, params: { id: term.id, term: { name: "Updated Term" } }
        expect(term.reload.name).to eq("Updated Term")
        expect(response).to redirect_to(term)
        expect(flash[:notice]).to eq('Term updated successfully.')
      end
    end

    context "with invalid attributes" do
      it "renders the edit template" do
        patch :update, params: { id: term.id, term: { name: "" } }
        expect(response).to render_template(:edit)
      end
    end
  end

  describe "DELETE #destroy" do
    it "deletes the term and redirects" do
      expect {
        delete :destroy, params: { id: term.id }
      }.to change(Term, :count).by(-1)
      expect(response).to redirect_to(terms_path)
      expect(flash[:notice]).to eq('Term deleted successfully.')
    end
  end
end

