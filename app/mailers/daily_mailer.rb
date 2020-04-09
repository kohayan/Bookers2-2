class DailyMailer < ApplicationMailer
	def send_daily_email
		mail(bcc: User.pluck(:email), subject:"朝です。")
  	end
end
