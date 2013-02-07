require "spec_helper"

describe "rendering all users" do

  let(:user1) { stub_model(User, :email => "u1@example.com") }
  let(:user2) { stub_model(User, :email => "u2@example.com") }

  it "should show all users emails" do
    assign(:users, [user1, user2])

    render template: "users/index.html.erb"

    rendered.should =~ /#{user1.email}/
    rendered.should =~ /#{user2.email}/
  end

end