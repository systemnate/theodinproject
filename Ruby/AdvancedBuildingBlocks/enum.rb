module Enumerable
  def my_each
    return self.to_enum unless block_given?
    0.upto(self.size - 1) do |i|
      yield(self[i])
    end
  end

  def my_each_with_index
    return self.to_enum unless block_given?
    0.upto(self.size - 1) do |i|
      yield(self[i], i)
    end
  end

  def my_select
    return self.to_enum unless block_given?
    selected_values = []
    self.my_each do |i|
      if yield(i) == true
        selected_values << i
      end
    end
    selected_values
  end

  def my_all?
    unless block_given?
      return false if self.include?(nil)
      return false if self.include?(false)
      return true
    end
    self.my_each do |i|
      return false unless yield(i)
    end
    true
  end

  def my_any?
    return false if self.size == 0
    if block_given?
      self.my_each do |i|
        return true if yield(i)
      end
    end
    false
  end

  def my_none?
    return true if self.empty?
    return true if self.reject { |i| i.nil? or i == false }.size > 0
    return false
  end

  def my_count
    count = 0
    self.my_each do |item|
      count += 1
    end
    count
  end

  def my_map
    return self.to_enum unless block_given?
    self.my_each_with_index do |item, index|
      self[index] = yield(item)
    end
    self
  end
end
