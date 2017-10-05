class FeedbackMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.feedback_mailer.reply_feedback.subject
  #
  def reply_feedback(feedback,message)
    @feedback=feedback
    @message=message
    @greeting = "Here is the feedback you submited to the school: "

    mail to: feedback.email,:subject=>"Your Feedback Has Been Reviewed"
  end
end
