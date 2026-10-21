require "test_helper"

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company = companies(:one)       # Tokyo, hires_juniors true, visa_sponsorship true
    @other_company = companies(:two) # Osaka, hires_juniors true, visa_sponsorship false
  end

  test "index is publicly accessible without signing in" do
    get companies_path
    assert_response :success
  end

  test "index lists companies" do
    get companies_path
    assert_response :success
    assert_match @company.name, response.body
    assert_match @other_company.name, response.body
  end

  test "show displays company details" do
    get company_path(@company)
    assert_response :success
    assert_match @company.name, response.body
    assert_match @company.description, response.body
  end

  test "index filters by text query across name, industry, tech_stack" do
    get companies_path, params: { query: "rails" }
    assert_response :success
    assert_match @other_company.name, response.body
    assert_no_match @company.name, response.body
  end

  test "index filters by visa sponsorship" do
    get companies_path, params: { visa_sponsorship: "1" }
    assert_response :success
    assert_match @company.name, response.body
    assert_no_match @other_company.name, response.body
  end

  test "index filters by japanese level" do
    get companies_path, params: { japanese_level: "business" }
    assert_response :success
    assert_match @other_company.name, response.body
    assert_no_match @company.name, response.body
  end

  test "index shows a no-matches message when filters exclude everything" do
    get companies_path, params: { query: "nonexistent company xyz" }
    assert_response :success
    assert_match "No companies match", response.body
  end
end
