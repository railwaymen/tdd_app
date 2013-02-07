require 'spec_helper'

describe "UsersController routing" do
  
  let(:user) { FactoryGirl.create :user }

  it "GET 'index'" do
    { get: "/users" }.should route_to(controller: "users", action: "index")
  end

  it "GET 'show'" do
    { get: "/users/#{user.id}" }.should route_to(controller: "users", action: "show", id: user.id.to_s)
  end

end
