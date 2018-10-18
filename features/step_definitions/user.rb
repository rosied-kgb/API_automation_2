class User


  attr_accessor :address, :first_name, :last_name

  def initialize
    @first_name = 'Test'
    @last_name = 'Jones'
    @address = [UserAddress.new]
  end


end