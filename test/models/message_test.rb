require 'test_helper'

class MessageTest < ActiveSupport::TestCase

  def setup
  	@message = Message.new(content: "This is a test string")
  end

  test "should be valid" do
  	assert @message.valid?
  end

  test "content should be present" do
  	@message.content = "  "
  	assert_not @message.valid?
  end

  test "content should be at most 14 characters" do
  	@message.content = "a" * 145
  	assert_not @message.valid?
  end

end
