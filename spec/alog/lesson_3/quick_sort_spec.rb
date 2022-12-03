RSpec.describe Alog::Lesson3::QickSort  do
  subject(:service) { described_class.new }

  describe ".call" do
    it { expect(service.call([6, 2, 5, 4, 1, 2, 9, 8, 3, 7])).to eq([1, 2, 2, 3, 4, 5, 6, 7, 8, 9]) }
  end
end
