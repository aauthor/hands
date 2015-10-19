class CurrentUser

  attr_reader :name

  def initialize(name: nil)
    @name = name
  end

  def ==(other)
    other.name == name
  end

end
