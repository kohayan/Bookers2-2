class ThanksMailer < ApplicationMailer
	default from: "ENV['Gmail_address']"

  def send_signup_email(user)
        @user = user
        mail( :to => @user.email, :subject => "会員登録が完了しました。" )
  end
end
