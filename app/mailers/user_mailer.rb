class UserMailer < ApplicationMailer
  default from: 'notifications@agendatv.com'

  def remind_tv_show(user, show_time)
    @user = user
    @show_time  = show_time
    mail(to: @user.email, subject: "#{show_time.show.name} is about to begin")
  end
end
