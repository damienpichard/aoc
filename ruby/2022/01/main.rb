require_relative "../../lib/AoC.rb"


def solve1(inputs)
  inputs.split(/\n{2,}/).map { |e| e.split.map(&:to_i).sum }.max
end

def solve2(inputs)
  inputs.split(/\n{2,}/).map { |e| e.split.map(&:to_i).sum }.sort.reverse.take(3).sum
end


aoc = AoC.new(1, 2022, :solve1, :solve2)
aoc.prettify
