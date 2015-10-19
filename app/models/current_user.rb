class CurrentUser
  include ActiveModel::Model

  attr_accessor :name

  def ==(other)
    other.name == name
  end

end
