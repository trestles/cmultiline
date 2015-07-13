

class Array
  def array_to_dashed
    v=self.sort.uniq.join('--')
    return '-' + v + '-'
  end
end

