
class String
  def dashed_to_array
    self.split('-').reject(&:empty?).map(&:to_i).sort.uniq
  end
end

