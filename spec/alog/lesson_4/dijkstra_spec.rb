RSpec.describe Alog::Lesson4::Dijkstra do
  subject(:service) { described_class.new }

  describe ".call" do
    it "find a min weght path" do
      graph = { start: { a: 6, b: 2 }, a: { fin: 1 }, b: { a: 3, fin: 5 }, fin: {} }
      costs = { a: 6, b: 2, fin: Float::INFINITY }
      parents = { a: :start, b: :start }
      expect(service.call(graph, costs, parents)).to eq(6)
    end
  end
end
