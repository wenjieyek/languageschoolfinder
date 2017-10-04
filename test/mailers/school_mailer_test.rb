require 'test_helper'

class SchoolMailerTest < ActionMailer::TestCase
  test "reply_application" do
    mail = SchoolMailer.reply_application
    assert_equal "Reply application", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
