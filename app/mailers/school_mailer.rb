class SchoolMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.school_mailer.reply_application.subject
  #
  def reply_application(online_application,message,school)
    @online_application=online_application
    @message=message
    @school=school
    @greeting = "Here is the information you submited to the school: "

    mail to: online_application.email,
         subject: "Your Application Has Been Reviewed", 
         reply_to: school.email
  end
end
