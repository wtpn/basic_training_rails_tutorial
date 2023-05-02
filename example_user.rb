class User
  attr_accessor :name, :email, :first_name, :last_name

  def initialize(attributes = {})
    @name  = attributes[:name]
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @email = attributes[:email]
  end

  def formatted_email
    "#{self.full_name} <#{@email}>"
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end
end
