require_relative "string.rb"


class AoC
  def initialize(day, year, f1, f2)
    @day  = day
    @year = year
    @path = "inputs/%d/%02d" % [year, day]

    @fnp1 = method(f1.to_sym)
    @fnp2 = method(f2.to_sym)

    @samples = File.read("#{@path}/samples.txt")
    @inputs  = File.read("#{@path}/inputs.txt")
  end

  def header

  end

  def prettify()
    puts "┌── " + "AoC %d/%02d".bold.blue % [@year, @day]
    puts "├── " + "PART_01".bold.green
    puts "│   └── " + "samples".bold + " → " + @fnp1.call(@samples).to_s.bold.red
    puts "│   └── " + "inputs ".bold + " → " + @fnp1.call(@inputs).to_s.bold.red
    puts "├── " + "PART_02".bold.green
    puts "│   └── " + "samples".bold + " → " + @fnp2.call(@samples).to_s.bold.red
    puts "│   └── " + "inputs ".bold + " → " + @fnp2.call(@inputs).to_s.bold.red
    puts "└───────────────────────"
  end
end
