require 'rails_helper'

RSpec.describe "candidates/new", type: :view do
  before(:each) do
    assign(:candidate, Candidate.new(
      :name => "MyString",
      :avatar => "MyString"
    ))
  end

  it "renders new candidate form" do
    render

    assert_select "form[action=?][method=?]", candidates_path, "post" do

      assert_select "input#candidate_name[name=?]", "candidate[name]"

      assert_select "input#candidate_avatar[name=?]", "candidate[avatar]"
    end
  end
end
