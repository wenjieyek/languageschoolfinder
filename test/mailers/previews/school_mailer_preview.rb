# Preview all emails at http://localhost:3000/rails/mailers/school_mailer
class SchoolMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/school_mailer/reply_application
  def reply_application
    SchoolMailer.reply_application
  end

end
