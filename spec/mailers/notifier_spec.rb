require 'spec_helper'

describe Notifier do

  describe "#welcome" do
    let(:user) { mock_model(User, :name => 'Paul', :email => 'user@example.com') }
    let(:mail) { Notifier.welcome(user) }

    it "renders the subject" do
      mail.subject.should == 'Welcome'
    end

    it "renders the sender email" do
       mail.to.should == [user.email]
    end

    it "renders the receiver email" do
      mail.from.should == ['noreply@company.com']
    end

    it "should contain user name" do
      mail.body.encoded.should =~ /#{user.name}/
    end
  end

end