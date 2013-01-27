require "spec_helper"

describe "Users" do
  let!(:user) { User.create(name: "jon", email: "jon@example.com" ) }

  it "should show user" do
    visit users_path
    click_link user.email
    current_path.should == user_path(user)
    page.has_content?("jon").should be_true
    page.has_content?("jon@example.com").should be_true
  end
end

