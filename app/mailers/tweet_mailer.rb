class TweetMailer < ApplicationMailer
  def notify(tweet)
    @tweet = tweet
    @user = tweet.user
    mail(to: @user.email, subject: "You have a new tweet!")
  end
end
