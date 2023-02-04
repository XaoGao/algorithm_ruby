module Alog
  module Lesson4
    class Dijkstra
      attr_accessor :processed

      def initialize
        @processed = []
      end

      def call(graph, costs, parents)
        node = find_lowest_coast_node(costs)

        while !node.nil?
          cost = costs[node]
          neighbors = graph[node]

          neighbors.keys.each do |neighbor|
            new_cost = cost + neighbors[neighbor]
            if costs[neighbor] > new_cost
              costs[neighbor] = new_cost
              parents[neighbor] = neighbor
            end
          end
          processed.push node
          node = find_lowest_coast_node(costs)
        end

        costs[:fin]
      end

      private

      def find_lowest_coast_node(costs)
        lowest_cost = Float::INFINITY
        lowest_cost_node = nil
        costs.each do |c|
          cost = c[1]
          node = c[0]
          if cost < lowest_cost && !processed.include?(node)
            lowest_cost = cost
            lowest_cost_node = node
          end
        end

        lowest_cost_node
      end
    end
  end
end
