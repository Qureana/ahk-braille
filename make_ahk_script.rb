# coding: utf-8
require 'CSV'
class Letter
  attr_reader :hiragana, :input_key, :code, :dots, :decimal
  @@key_binds = ["f", "d", "s", "j", "k", "l"]
  def initialize(hiragana, input_key, code)
    @hiragana = hiragana
    @input_key = input_key
    @code = code
    @dots = code.chars.freeze
    @decimal = 0

    dots.each.with_index do |dot, index|
      @decimal +=  dot.to_i * 2 ** index
    end
    # p @hiragana if @decimal == 16 or @decimal == 22
  end

  def generate_script
    script = ""
    script << "if("
    # dots.each.with_index do |dot, i|
    #   script << "#{'Not ' if dot == '1' }GetKeyState(\"#{@@key_binds[i]}\", \"P\")#{' and ' unless i == dots.count - 1}"
    # end
    script << "key_value == #{@decimal}"
    script << ")\n"
    script << "\tSend, #{@input_key}"
    # puts script
  end
end
decimals = []
CSV.foreach("./braille_ja_table.csv") do |row|
  letter =  Letter.new(row[0], row[1], row[2])
  letter.generate_script
  decimals << letter.decimal
end
p decimals.sort!
p decimals.group_by{|i| i}.reject{|k,v| v.one?}.keys
# p codes
