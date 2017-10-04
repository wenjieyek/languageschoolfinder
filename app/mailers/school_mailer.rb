class SchoolMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.school_mailer.reply_application.subject
  #
  def reply_application(online_application)
    @online_application=online_application
    @greeting = "Hi! Your Application Has Been Reviewed"

    mail to: online_application.email,:subject=>"Your Application Has Been Reviewed"
  end
end
