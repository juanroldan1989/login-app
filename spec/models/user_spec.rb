require "rails_helper"

RSpec.describe User, "validations" do
  it { is_expected.to validate_presence_of(:full_name) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:password) }
  it { is_expected.to validate_length_of(:password).is_at_least(8) }
end
