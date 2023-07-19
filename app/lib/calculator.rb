class Calculator
  def initialize(user)
    @user = user
  end

  def age
    Date.today.year - @user.date_of_birth.year
  end
end