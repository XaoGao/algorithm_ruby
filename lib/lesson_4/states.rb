module Alog
  module Lesson4
    class States
      def call(states_needed, stations)
        final_stations = []

        while states_needed.size.positive?
          best_station = nil
          states_covered = []

          stations.each do |key, value|
            covered = states_needed & value
            if covered.size > states_covered.size
              best_station = key
              states_covered = covered
            end
          end

          final_stations << best_station
          states_needed -= states_covered
        end

        final_stations
      end
    end
  end
end
