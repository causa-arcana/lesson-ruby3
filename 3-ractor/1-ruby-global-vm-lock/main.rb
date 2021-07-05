#!/usr/bin/env ruby

array = []

10.times.map do
  Thread.new do
    1000.times do
      array << nil
      sleep 0.0001
    end
  end
end.each(&:join)

raise unless array == [nil] * 10_000


######################################################################


array = []

10.times.map do
  Thread.new do
    10_000.times do |index|
      array << index
      sleep 0.0001
    end
  end
end.each(&:join)

raise if array == (0...10_000).to_a * 10


######################################################################


array = []
mutex = Mutex.new

10.times.map do
  Thread.new do
    mutex.synchronize do
      10_000.times do |index|
        array << index
        sleep 0.0001
      end
    end
  end
end.each(&:join)

raise unless array == (0...10_000).to_a * 10
