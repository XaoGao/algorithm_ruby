module Alog
  module Lesson2
    class SelectSort
      def call(array)
        result = []

        for index in (0..array.length - 1) do
          smallest_index = findSmallest(array)
          result << array.delete_at(smallest_index)
        end

        result
      end

      private

      def findSmallest(array)
        smallest_index = array[0]
        smallest_index_index = array[0]

        for index in (0..array.length - 1) do
          if array[index] <= smallest_index
            smallest_index = array[index]
            smallest_index_index = index
          end
        end
        smallest_index_index
      end
    end
  end
end
