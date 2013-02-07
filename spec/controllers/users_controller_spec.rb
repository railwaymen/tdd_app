require "spec_helper"

describe UsersController do

  let!(:user) { User.create(name: "jon", email: "jon@example.com" ) }
  let!(:user) { FactoryGirl.create :user }

  describe "GET #show" do
    it "should return user" do
      get :show, id: user.id
      response.should be_success
      assigns(:user).should == user
    end
  end

  describe "POST #create" do
    it "should create new user" do
      -> { 
        post :create, user: {name: "paul", email: "paul@example.com" } 
      }.should change(User, :count).by(1)
    end
  end

  describe "PUT #update" do
    context "save successful" do
      it "should redirect to users list" do
        User.any_instance.stub(:update_attributes).and_return(true)
        put :update, id: user.id
        response.should be_redirect
      end
    end

    context "save failed" do
      it "should redirect to users list" do
        User.any_instance.should_receive(:update_attributes).and_return(false)
        put :update, id: user.id
        response.should render_template("edit")       
      end
    end
  end

end
