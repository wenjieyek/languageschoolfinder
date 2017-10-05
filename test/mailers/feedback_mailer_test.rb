require 'test_helper'

class FeedbackMailerTest < ActionMailer::TestCase
  test "reply_feedback" do
    mail = FeedbackMailer.reply_feedback
    assert_equal "Reply feedback", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
