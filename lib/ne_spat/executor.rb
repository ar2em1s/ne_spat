# frozen_string_literal: true

module NeSpat
  class Executor
    INTERVAL = 0.02
    DELTA = [1, -1]

    def self.call
      mouse = RuMouse.new

      loop do
        sleep(INTERVAL)
        position = mouse.position
        mouse.move(position[:x] + DELTA.sample, position[:y] + DELTA.sample)
      end
    end
  end
end
