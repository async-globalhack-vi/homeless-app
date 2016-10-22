class UserMailer < ApplicationMailer
  default from: "ruby.slippers.gh6@gmail.com"

  def need_email(assistance_provider) #qualified_need
    @assistance_provider = assistance_provider

    mail(to: assistance_provider.email)
  end
end
