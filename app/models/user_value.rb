class UserValue < ActiveRecord::Base
  belongs_to :user
  belongs_to :value

  def self.values_of_user(user_id)
    # valueIDs = Uservalue.where(user_id: user_id).map{ |us|us.value_id }
    # valueIDs.map { |vID| Value.find(vID) }
    user_values = UserValue.where(user_id: user_id).includes(:value)
    values = user_values.map {|user_value| user_value.value}
  end
end
