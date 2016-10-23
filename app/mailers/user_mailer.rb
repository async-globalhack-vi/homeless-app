class UserMailer < ApplicationMailer
  default from: "ruby.slippers.gh6@gmail.com"

  def need_email(assistance_provider, qualified_need)
    @assistance_provider = assistance_provider
    @qualified_need = qualified_need
    email_with_name = %("#{@assistance_provider.name}" <#{@assistance_provider.email}>)
    mail(to: email_with_name, subject: "Urgent Homelessness Risk")
  end
end
