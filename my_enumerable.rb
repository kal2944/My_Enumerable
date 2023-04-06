module MyEnumerable
    def all?(&block)
      result = true
      each { |e| result = false unless block.call(e) }
      result
    end
  
    def any?(&block)
      result = false
      each { |e| result = true if block.call(e) }
      result
    end
  
    def filter?(&block)
      result = []
      each { |e| result << e if block.call(e) }
      result
    end
  end