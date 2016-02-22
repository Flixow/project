class FirstMailer < ActionMailer::Base

  default from: "test@mailer.com"

  def sample_email(user,template)
    @user = user
    mail(
      to: @user.email, 
      subject: "Email On Date",
      template_name: template
    )
  end

end
