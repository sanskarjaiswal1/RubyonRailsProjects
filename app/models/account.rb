class Account < ApplicationRecord
  belongs_to :course

  # Optionally, define a manual getter if needed
  # def user
  #   OpenStruct.new(id: user_id) # or nil
  # end
end
