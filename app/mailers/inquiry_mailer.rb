class InquiryMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.inquiry_mailer.reply_inquiry.subject
  #
  def reply_inquiry(inquiry,message)
    @inquiry=inquiry
    @message=message
    @greeting = "Here is the inquiry you submited to the school: "

    mail to: inquiry.email,:subject=>"Your Inquiry Has Been Reviewed"
  end
end
