require "test_helper"

class TeamsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "index" do
    get "/teams.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Team.count, data.length
  end

  test "create" do
    assert_difference "Team.count", 1 do
      post "/teams.json", params: { year: 1972, image: "https://m.media-amazon.com/images/I/51MndQ3JxZL._AC_UF1000,1000_QL80_.jpg", information: "The 2004 USC Trojans football team represented the University of Southern California in the 2004 NCAA Division I-A football season. The 2004 Trojans football team won the 2004 BCS National Championship by winning the 2005 Orange Bowl, that year's BCS National Championship Game. The team also won the AP title for the second year in a row. It was the Trojans' first unanimous national championship since 1972, and the second time a team had gone wire-to-wire, with the Trojans holding the number 1 spot in the polls all season." }
      assert_response 200
    end
  end

  test "show" do
    get "/teamss/#{Team.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "year", "image", "information", "created_at", "updated_at"], data.keys
  end
end
