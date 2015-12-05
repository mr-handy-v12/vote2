require 'rails_helper'

RSpec.describe "candidates/index", type: :view do
  before(:each) do
    assign(:candidates, [
      Candidate.create!(
        :name => "Name",
        :avatar => "Avatar"
      ),
      Candidate.create!(
        :name => "Name",
        :avatar => "Avatar"
      )
    ])
  end

  it "renders a list of candidates" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Avatar".to_s, :count => 2
  end
end
