module Alog
  module Lesson1
    class BinarySearch
      def search(data, number)
        array = data.to_a

        low = 0
        high = array.length - 1

        while low <= high
          mid = (low + high) / 2

          return array[mid] if array[mid] == number

          if array[mid] > number
            high = mid - 1
          else
            low = mid + 1
          end
        end
      end
    end
  end
end
