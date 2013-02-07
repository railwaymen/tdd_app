class Notifier < ActionMailer::Base
  default from: 'noreply@company.com'

  def welcome(user)
  	@name = user.name
  	mail to: user.email, subject: "Welcome"
  end
end