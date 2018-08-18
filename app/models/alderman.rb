class Alderman
  attr_reader :name, :ward

  def initialize(info)
    @name = info["alderman"]
    @ward = info["ward"]
  end

end
