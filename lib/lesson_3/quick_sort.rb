module Alog
  module Lesson3
    class QickSort
      def call(array)
        return array if array.size < 2

        pivot = array[0]
        less = []
        greater = []

        for index in (1..array.size - 1) do
          less << array[index] if array[index] <= pivot

          greater << array[index] if array[index] > pivot
        end

        call(less) + [pivot] + call(greater)
      end
    end
  end
end
