require "test_helper"

class CompanyTest < ActiveSupport::TestCase
  test "requires a name" do
    company = Company.new
    assert_not company.valid?
    assert_includes company.errors[:name], "can't be blank"
  end

  test "defaults japanese_level to not_required" do
    assert_equal "not_required", Company.new.japanese_level
  end

  test "defaults remote_policy to onsite" do
    assert_equal "onsite", Company.new.remote_policy
  end
end
