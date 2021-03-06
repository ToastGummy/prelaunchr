class UserMailer < ActionMailer::Base
  default from: "Toast! <sean@harrys.com>"

  def signup_email(user)
    @user = user
    @twitter_message = "#TheFutureOfDrinking. Can't wait for @ToastGummy to launch."

    mail(:to => user.email, :subject => "Thanks for signing up!")
  end
end
