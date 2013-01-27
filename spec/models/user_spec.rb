require 'spec_helper'

describe User do
  let(:user) { FactoryGirl.build(:user) }

  describe "email" do
    context "correct" do
      it "should has email in valid format" do
        user.should be_valid
      end
    end

    context "incorrect" do
      it "should have not correct email" do
        user.email = "userexample"
        user.should_not be_valid
      end
    end
  end
end
