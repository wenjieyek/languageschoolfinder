require 'test_helper'

class InquiryMailerTest < ActionMailer::TestCase
  test "reply_inquiry" do
    mail = InquiryMailer.reply_inquiry
    assert_equal "Reply inquiry", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
