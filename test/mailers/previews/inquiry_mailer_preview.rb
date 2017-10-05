# Preview all emails at http://localhost:3000/rails/mailers/inquiry_mailer
class InquiryMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/inquiry_mailer/reply_inquiry
  def reply_inquiry
    InquiryMailer.reply_inquiry
  end

end
