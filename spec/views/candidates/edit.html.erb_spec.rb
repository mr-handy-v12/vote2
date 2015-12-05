require 'rails_helper'

RSpec.describe "candidates/edit", type: :view do
  before(:each) do
    @candidate = assign(:candidate, Candidate.create!(
      :name => "MyString",
      :avatar => "MyString"
    ))
  end

  it "renders the edit candidate form" do
    render

    assert_select "form[action=?][method=?]", candidate_path(@candidate), "post" do

      assert_select "input#candidate_name[name=?]", "candidate[name]"

      assert_select "input#candidate_avatar[name=?]", "candidate[avatar]"
    end
  end
end
