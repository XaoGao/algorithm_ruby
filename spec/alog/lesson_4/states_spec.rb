module Alog
  module Lesson4
    RSpec.describe States do
      subject(:service) { described_class.new }

      describe ".call" do
        it "success" do
          states_needed = [:mt, :wa, :or, :id, :nv, :ut, :ca, :az]
          stations = {
            knoe: [:id, :nv, :ut],
            ktwo: [:wa, :id, :mt],
            kthree: [:or, :nv, :ca],
            kfour: [:nv, :ut],
            kfive: [:ca, :az],
          }
          expect(service.call(states_needed, stations)).to eq([:knoe, :ktwo, :kthree, :kfive])
        end
      end
    end
  end
end
