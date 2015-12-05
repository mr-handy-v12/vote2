require 'rails_helper'

RSpec.describe "candidates/show", type: :view do
  before(:each) do
    @candidate = assign(:candidate, Candidate.create!(
      :name => "Name",
      :avatar => "Avatar"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Avatar/)
  end
end
