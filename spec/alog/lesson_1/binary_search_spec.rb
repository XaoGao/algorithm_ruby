RSpec.describe Alog::Lesson1::BinarySearch do
  subject(:service) { described_class.new }

  describe ".search" do
    it { expect(service.search([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 7)).to eq(7) }
    it { expect(service.search((1..100), 64)).to eq(64) }
    it { expect(service.search((1..100), -1)).to be_nil }
  end
end
