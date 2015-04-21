require 'yaml'
class Account

  attr_accessor :user_name, :password, :secret_answer

  def initialize(data_plan = nil)
    @data_amount = data_plan
    @lines = []
  end

  def lines
    @lines.size
  end

  def data_phones
    @lines.count {|line| line.data?}
  end

  def <<(line)
    @lines.push(line)
  end
end

