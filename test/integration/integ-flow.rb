require 'test_helper'

class GossipFlowTest < ActionDispatch::IntegrationTest

  def setup
    @moussaillon = Moussaillon.create(anonymous_username: "Test", email: "user@example.com", password: "lol12345", password_confirmation: "lol12345", sign_up_code: "GOSSIPTHP2018")
  end

  test "redirect to signup page if not logged in" do
    get root_path
    assert_redirected_to new_moussaillon_session_path
  end

  test "redirect to gossip if logged_in" do
    @moussaillon.save
    get root_path
    post new_moussaillon_session_path, params: { moussaillon: { email:    'user@example.com', password:"lol12345" }}
    assert_redirected_to root_path
  end

end
