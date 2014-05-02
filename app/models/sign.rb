class Sign
  # accepts either a string or a symbol.  other code should use symbols but we may 
  # receive a string as a param
  def initialize(k)
    @type=k.is_a?(Symbol)?k:k.to_sym
  end
  
  def type
    @type
  end
  
  # accepts either a string or a symbol.  other code should use symbols but we may 
  # receive a string as a param
  def beats(against)
    # are the two signs equal?  nobody wins
    if @type==against.type
      return nil
    # rock beats scissors beats paper beats rock, return true for win
    elsif (@type==:rock && against.type==:scissors) ||
            (@type==:scissors && against.type==:paper) ||
            (@type==:paper && against.type==:rock)
      return true
    end
    # any other combo loses
    return false
  end
  
  def self.random
    # return a random sign
    Sign.new([:rock, :paper, :scissors].sample)
  end
end